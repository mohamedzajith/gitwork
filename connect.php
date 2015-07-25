<?php

$mysql_hostname="localhost";
$mysql_username="root";
$mysql_password="";

$database="sessiondb";

if(!mysql_connect($mysql_hostname,$mysql_username,$mysql_password)||!mysql_select_db($database)){
	die(mysql_error());
}

?>