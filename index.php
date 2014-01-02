<?php
define("SITE_ROOT", realpath(dirname(__FILE__)));

define("API_VERSION", "0.1");

define("SQL_HOST", "localhost");
define("SQL_USERNAME", "millenn1_sunnyd");
define("SQL_PASSWORD", "A1a71094");

define("SQL_DB", "millenn1_barfinder");
define("IMAGES_DIR", "/images/");


chdir('..');
include_once 'barfinderapi/framework/Epi.php';
Epi::setPath('base', 'barfinderapi/framework');
Epi::init('api');
Epi::init('database');
EpiDatabase::employ('mysql', SQL_DB, SQL_HOST, SQL_USERNAME, SQL_PASSWORD);
// Epi::init('config');
// getConfig()->set('base', '/public_html/barfinderapi/');
/*
 * We create 3 normal routes (think of these are user viewable pages).
 * We also create 2 api routes (this of these as data methods).
 *  The beauty of the api routes are they can be accessed natively from PHP
 *    or remotely via HTTP.
 *  When accessed over HTTP the response is json.
 *  When accessed natively it's a php array/string/boolean/etc.
 */
getRoute()->get('/', 'showEndpoints');
getRoute()->get('/version', 'apiVersion');

/*
 * ******************************************************************************************
 * Bars Routing
 * ******************************************************************************************
 */
getRoute()->post('/bars', 'postBar');
getRoute()->get('/bars', 'getBars');

getRoute()->get('/bars/search', 'searchBars');

getRoute()->get('/bars/(\d+)', 'getBar');
getRoute()->delete('/bars/(\d+)', 'deleteBar');

getRoute()->post('/bars/(\d+)/checkins', 'postCheckin');
getRoute()->get('/bars/(\d+)/checkins', 'getCheckins');

getRoute()->get('/bars/(\d+)/rating', 'getRating');
getRoute()->post('/bars/(\d+)/rating', 'postRating');

getRoute()->get('/bars/(\d+)/gallery', 'getGallery');
getRoute()->post('/bars/(\d+)/gallery', 'postGallery');
getRoute()->delete('/bars/(\d+)/gallery/(\d+)', 'deleteGallery');
getRoute()->post('/bars/(\d+)/gallery/(\d+)/report', 'reportGallery');

getRoute()->post('/bars/(\d+)/comments', 'postComment');
getRoute()->get('/bars/(\d+)/comments', 'getComments');

getRoute()->post('/bars/(\d+)/waittime', 'postWaittime');
getRoute()->get('/bars/(\d+)/waittime', 'getWaittime');
/*
 * ******************************************************************************************
 * Users Routing
 * ******************************************************************************************
 */
getRoute()->get('/users', 'getUsers');
getRoute()->post('/users', 'postUser');

getRoute()->get('/users/(\d+)', 'getUser');
getRoute()->put('/users/(\d+)', 'putUser');
getRoute()->delete('/users/(\d+)', 'deleteUser');

getRoute()->get('/users/(\d+)/favorites','getFavorites');
getRoute()->post('/users/(\d+)/favorites', 'postFavorite');
getRoute()->delete('/users/(\d+)/favorites/(\d+)', 'deleteFavorite');

getRoute()->run();

/*
 * ******************************************************************************************
 * Define functions and classes which are executed by EpiCode based on the $_['routes'] array
 * ******************************************************************************************
 */

function showEndpoints() {
  echo '<ul>
          <li><a href="/">/</a> -> (home)</li>
          <li><a href="/version">/version</a> -> (print the version of the api)</li>
          <li><H2>Bars</H2></li>
          <li><a href="/bars">/bars</a> -> (print each bar)</li>
          <li><a href="/bars/search">/bars/search</a> -> (search for bar. Data: q=query string)</li>
          <li><a href="/bars/4192">/bars/4192</a> -> (print example bar)</li>
          <li><a href="/bars/4192/checkins">/bars/4192/checkins</a> -> (print example bar checkins)</li>
          <li><a href="/bars/4192/rating">/bars/4192/rating</a> -> (print example bar)</li>
          <li><a href="/bars/4192/gallery">/bars/4192/gallery</a> -> (print example bar)</li>

          
          <li><H2>Users</H2></li>
          <li><a href="/users">/users</a> -> (print each user)</li>
          <li><a href="/users/25">/users/25</a> -> (print example user)</li>
          <li><a href="/users/25/favorites">/users/25/favorites</a> -> (print example users favorites)</li>
          <li>
          <form id="favoriteform" method="post" action="/users/25/favorites">
            <input type="hidden" name="venueid" value="4138" /> 
            <a href="#" onclick="document.getElementById(\'favoriteform\').submit();">/users/25/favorites</a> -> favorite bar 4138 with user 25
          </form>
          </li>
        </ul>';
}

function apiVersion() {
  echo json_encode(array("version" => API_VERSION));
}

/*
 * ******************************************************************************************
 * Bars Implementation
 * ******************************************************************************************
 */
function postBar() {
  /*
    REQUIRED
    name
    lat
    lng
    
    OPTIONAL
    address
    cover
    event
    type (club pub restaurant)
    website
    twitter
    facebook
    city
  */
  if (!((isset($_POST['name']) && $_POST['name'] != "") || 
        (isset($_POST['lat']) && $_POST['lat'] != "") ||
        (isset($_POST['lng']) && $_POST['lng'] != ""))) {
      echo json_encode(array("error" => "Bad Arguments"));
    } else {
      $name = mysql_escape_string(strtolower($_POST['name']));
      $lat = mysql_escape_string(strtolower($_POST['lat']));
      $lng = mysql_escape_string(strtolower($_POST['lng']));
      
      $result = getDatabase()->execute("INSERT INTO venues (name, lat, lng)
                                        VALUES ('{$name}', '{$lat}', '{$lng}')");
      if ($result == true) {
          echo json_encode(array('response' => "success", 'value' => $name));
      } else {
          echo json_encode(array('response' => "error", 'value' => "Could not create venue"));
      }
    }
}

function getBars() {
    $bars = getDatabase()->all('SELECT  venues.id AS id,
                                        venues.name,
                                        venues.lat, 
                                        venues.lng
                                FROM venues
                                LEFT OUTER JOIN waitlog
                                ON  venues.foursquareId = waitlog.foursquareId AND  
                                    waitlog.updated >= NOW() - INTERVAL 1 HOUR
                                WHERE venues.enabled = 1
                                GROUP BY id');
    echo json_encode(array('bars' => $bars));
}

function searchBars() {
  if (!(isset($_GET['q']) && $_GET['q'] != "")) {
    echo json_encode(array());
  } else {
    $q = mysql_escape_string(strtolower($_GET['q']));
    $bar = getDatabase()->all('SELECT * FROM venues WHERE name LIKE "%' . $q . '%"');
    echo json_encode(array("bars" => $bar));
  }
}

function getBar($id) {
    $bar = getDatabase()->one('SELECT venues.foursquareId AS id, venues.id AS YqId,
                        IFNULL(COUNT(waitlog.foursquareId), 0) AS numberOfEstimates, 
                        IFNULL(FORMAT((((IFNULL(AVG(waitlog.peopleEstimate), 0) * 2) + IFNULL(AVG(waitlog.waitEstimate), 0)) / 
                            (CASE WHEN Count(waitlog.peopleEstimate) > 0 THEN 1 ELSE 0 END + CASE WHEN Count(waitlog.waitEstimate) > 0 THEN 1 ELSE 0 END)
                            ), 0), 0) AS waitTime,
                        FORMAT(IFNULL(AVG(waitlog.peopleEstimate), 0), 0) AS peopleEstimate,
                        venues.name, venues.type, venues.image, venues.image_mobile, venues.logo, venues.phone, venues.address, 
                        venues.lat, venues.lng, venues.website, venues.twitter, venues.facebook, 
                        venues.cover, venues.event, venues.city
                    FROM venues
                    LEFT OUTER JOIN waitlog
                    ON  venues.foursquareId = waitlog.foursquareId AND  
                        waitlog.updated >= NOW() - INTERVAL 1 HOUR
                    WHERE venues.enabled = 1 AND venues.id = ' . $id . '
                    GROUP BY id');
    if ($bar) {
      echo json_encode($bar);
    } else {
      echo json_encode(array("response" => "error", "value" => "No bar found"));
    }
}

function deleteBar($id) {
    $result = getDatabase()->execute("DELETE FROM venues 
                                      WHERE id={$id}");   
    if ($result == true) {
        echo json_encode(array('response' => "success"));
    } else {
        echo json_encode(array('response' => "error", 'value' => "Could not delete venue"));
    }
}

function postCheckin($id) {
    if (!(isset($_POST['uid']) && $_POST['uid'] != "")) {
      echo json_encode(array("error" => "User not found"));
    } else {
      $uid = mysql_escape_string(strtolower($_POST['uid']));
      $result = getDatabase()->execute("INSERT INTO checkins (uid, venueid)
                                          VALUES ('{$uid}', '{$id}')");
      if ($result == true) {
          echo json_encode(array('response' => "success", 'value' => $uid));
      } else {
          echo json_encode(array('response' => "error", 'value' => "Could not checkin"));
      }
    }
}

function getCheckins($id) {
    $checkins = getDatabase()->all("SELECT checkins.uid, users.name 
                                    FROM checkins
                                    LEFT JOIN users
                                    ON checkins.uid = users.id
                                    WHERE checkins.venueid = '{$id}' AND 
                                          checkins.updated >= NOW() - INTERVAL 3 HOUR
                                    ORDER BY checkins.updated DESC");
    echo json_encode(array("checkins" => $checkins));
}

function postRating($id) {
  if (!((isset($_POST['uid']) && $_POST['uid'] != "") || (isset($_POST['rating']) && $_POST['rating'] != ""))) {
    echo json_encode(array('response' => "error", 'value' => "Bad Arguments"));
  } else {
    $uid = mysql_escape_string(strtolower($_POST['uid']));
    $rating = mysql_escape_string(strtolower($_POST['rating']));
    $result = getDatabase()->execute("INSERT INTO ratings (userid, venueid, rating)
                                      VALUES ('{$uid}', '{$id}', '{$rating}')");
    if ($result == true) {
        echo json_encode(array('response' => "success", 'value' => $id));
    } else {
        echo json_encode(array('response' => "error", 'value' => "Could not rate venue"));
    }
  }
}

function getRating($id) {
  $rating = getDatabase()->one("SELECT AVG(score) AS score, COUNT(score) AS votes FROM ratings WHERE id='{$id}'");
  echo json_encode(array("rating" => $rating));
}

function postComment($id) {
  if (!((isset($_POST['uid']) && $_POST['uid'] != "") || (isset($_POST['comment']) && $_POST['comment'] != ""))) {
    echo json_encode(array('response' => "error", 'value' => "Bad Arguments"));
  } else {
    $uid = mysql_escape_string(strtolower($_POST['uid']));
    $comment = mysql_escape_string(strtolower($_POST['comment']));
    $result = getDatabase()->execute("INSERT INTO comments (uid, venueid, comment)
                                      VALUES ('{$uid}', '{$id}', '{$comment}')");
    if ($result == true) {
        echo json_encode(array('response' => "success", 'value' => $comment));
    } else {
        echo json_encode(array('response' => "error", 'value' => "Could not comment"));
    }
  }
}

function getComments($id) {
  $comments = getDatabase()->all("SELECT comment FROM comments WHERE id='{$id}' ORDER BY updated DESC");
  echo json_encode(array("comments" => $comments));
}

function postWaittime($id) {
  if (!((isset($_POST['uid']) && $_POST['uid'] != "") || (isset($_POST['estimate']) && $_POST['estimate'] != ""))) {
    echo json_encode(array('response' => "error", 'value' => "Bad Arguments"));
  } else {
    $uid = mysql_escape_string(strtolower($_POST['uid']));
    $estimate = mysql_escape_string(strtolower($_POST['estimate']));
    $result = getDatabase()->execute("INSERT INTO waitlog (uid, venueid, peopleEstimate)
                                      VALUES ('{$uid}', '{$id}', '{$estimate}')");
    if ($result == true) {
        echo json_encode(array('response' => "success", 'value' => $peopleEstimate));
    } else {
        echo json_encode(array('response' => "error", 'value' => "Could not comment"));
    }
  }
}

function getWaittime($id) {
  $waitTime = getDatabase()->all("SELECT AVG(peopleEstimate) FROM waitlog 
                                  WHERE id='{$id}' AND
                                        updated >= NOW() - INTERVAL 2 HOUR
                                  ORDER BY updated DESC");
  if ($waitTime > 0) {
    echo json_encode(array("waitTime" => $waitTime));
  } else {
    echo json_encode(array("waitTime" => null));
  }
}

function postGallery($id) {
  if ($_FILES["image"]["error"] > 0) {
      echo json_encode(array('response' => "error", 'value' => "Failed to recieve image"));
  } else {
      $newFilename = md5(mysql_escape_string(strtolower($_FILES["image"]["name"])));
      $ext = pathinfo($_FILES["image"]["name"], PATHINFO_EXTENSION);
      $file= SITE_ROOT . IMAGES_DIR . $newFilename . "." . $ext;
      move_uploaded_file($_FILES["image"]["tmp_name"], $file);

      
      $result = getDatabase()->execute("INSERT INTO images (uid, venueid, imagepath)
                                        VALUES ('{$uid}', '{$id}', '{$file}')");
      if ($result == true) {
          echo json_encode(array('response' => "success", 'value' => $file));
      } else {
          echo json_encode(array('response' => "error", 'value' => "Could not save image"));
      }
   }
}

function getGallery($id) {
    $gallery = getDatabase()->all("SELECT imagepath 
                        FROM images
                        WHERE venueid = '{$id}'
                        ORDER BY uploaded DESC");
    echo json_encode(array("gallery" => $gallery));
}

function deleteGallery($venueid, $imageid) {
    $result = getDatabase()->execute("DELETE FROM images 
                                      WHERE id={$imageid}");   
    if ($result == true) {
        echo json_encode(array('response' => "success"));
    } else {
        echo json_encode(array('response' => "error", 'value' => "Could not delete image"));
    }
}

function reportGallery($venueid, $imageid) {
    $result = getDatabase()->execute("UPDATE images 
                                      SET flag=1 
                                      WHERE id={$imageid}");   
    if ($result == true) {
        echo json_encode(array('response' => "success"));
    } else {
        echo json_encode(array('response' => "error", 'value' => "Could not report image"));
    }
}


/*
 * ******************************************************************************************
 * Users Implementation
 * ******************************************************************************************
 */
function getUsers() {
  $users = getDatabase()->all('SELECT id, email, age, gender, name, points FROM users');
  echo json_encode(array('users' => $users));
}

function postUser() {
   
   /*
    REQUIRED
    email
    password
    name
    
    OPTIONAL
    fbid
    image
    age
    gender
    anonymize
  */
  if (!((isset($_POST['email']) && $_POST['email'] != "") || 
        (isset($_POST['password']) && $_POST['password'] != "") ||
        (isset($_POST['name']) && $_POST['name'] != ""))) {
      echo json_encode(array("response" => "error", "value" => "Bad Arguments"));
    } else {
      $name = mysql_escape_string(strtolower($_POST['email']));
      $lat = mysql_escape_string(strtolower($_POST['password']));
      $lng = mysql_escape_string(strtolower($_POST['name']));
      
      $result = getDatabase()->execute("INSERT INTO users (email, password, name)
                                        VALUES ('{$email}', '{$password}', '{$name}')");
      if ($result == true) {
          echo json_encode(array('response' => "success", 'value' => $name));
      } else {
          echo json_encode(array('response' => "error", 'value' => "Could not create user"));
      }
    }
}

function getUser($id) {
  $user = getDatabase()->one('SELECT id, email, age, gender, name, points FROM users WHERE id = "'.$id.'"');
  echo json_encode($user);
}

function putUser($id) {

  echo json_encode(array("todo: " => "finish"));
}

function deleteUser($id) {
  $result = getDatabase()->execute("DELETE FROM users 
                                      WHERE id={$id}");   
  if ($result == true) {
      echo json_encode(array('response' => "success"));
  } else {
      echo json_encode(array('response' => "error", 'value' => "Could not delete user"));
  }
}

function getFavorites($id) {
  $favorites = getDatabase()->all("SELECT venueid AS venueid
                        FROM favourites
                        WHERE userid = '".$id."'");
  echo json_encode($favorites);
}

function postFavorite($uid) {
  if (!(isset($_POST['venueid']) && $_POST['venueid'] != "")) {
    echo json_encode(array('response' => "error", 'value' => "Bad Arguments"));
  } else {
    $venueid = mysql_escape_string(strtolower($_POST['venueid']));
    $result = getDatabase()->execute("INSERT INTO favourites (userid, venueid)
                                      VALUES ('{$uid}', '{$venueid}')");
    if ($result == true) {
        echo json_encode(array('response' => "success", 'value' => $venueid));
    } else {
        echo json_encode(array('response' => "error", 'value' => "Could not save venue"));
    }
  }
}

function deleteFavorite($id, $fid) {
    $result = getDatabase()->execute("DELETE FROM favourites 
                                      WHERE id={$fid}");   
    if ($result == true) {
        echo json_encode(array('response' => "success"));
    } else {
        echo json_encode(array('response' => "error", 'value' => "Could not delete image"));
    }
}