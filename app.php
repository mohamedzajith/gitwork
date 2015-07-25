<?php
require 'connect.php';
require 'core.php';

$firstname = getuserfield('firstname');  $lastname = getuserfield('lastname');
$username = getuserfield('username');
echo "you're logged in, ".$firstname." ".$lastname." . <a href='logout.php'>Log out</a>";
	$id=$_GET['id'];
 	$query1="select tel,publish,publishtype,message,catogory from sessionstt where sessionsid='".$id."'";
      $result = mysql_query($query1);
      $num=mysql_fetch_array($result);

	echo "<table border='2'  ><form method='POST' >";
    echo "<td>Telephone: <input type='text' name='subject' value='".$num['tel']."'/></td>"."</br>"."</br>";
	 echo "<td> Publish: <input type='text' name='author' value='".$num['publish']."'/></td>"."</br>"."</br>";
    echo "<td>Publish Type: <input type='text' name='date' value='".$num['publishtype']."'/></td>"."</br>"."</br>"; 
	echo "<td>Message: <input type='text' name='msg' value='".$num['message']."'/></td>"."</br>"."</br>";
	echo "<td>Category: <input type='text' name='msg' value='".$num['catogory']."'/></td>"."</br>"."</br>";
	echo "<input type='submit' value='approval'>";
	echo "</form></table>";
$qry=mysql_query("update sessionstt set approval='true', Approval_admin='$username' where sessionsid='$id'");
$result2 = mysql_query($qry);
echo "doneeeeeeeee";

?>