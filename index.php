<?php
require 'core.php';
require 'connect.php';

if(loggedin()){
  //$firstname = getuserfield('firstname');  $lastname = getuserfield('lastname');
 // echo "you're logged in, ".$firstname." ".$lastname." . <a href='logout.php'>Log out</a>";
	header('Location: home.php');
}else{
  include 'loginform.php';
}


?>