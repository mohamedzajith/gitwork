<?php
require 'connect.php';
require 'core.php';

$result = mysql_query("SELECT * FROM sessionstt");
$firstname = getuserfield('firstname');  $lastname = getuserfield('lastname');
echo "you're logged in, ".$firstname." ".$lastname." . <a href='logout.php'>Log out</a>";
echo "<table border='1'>
 		<tr>
          <th>SessionID</th>
          <th>Telephone</th>
          <th>Menu</th>
          <th>Main-Menu</th>
          <th>Category</th>
          <td>Created At</td>
          <td>Publish</td>
          <td>Publish-Type</td>
          <td>Message</td>
          <td>Approval</td>        
		</tr>";
	while($row = mysql_fetch_array($result)) {
		  echo "<tr>";
		  echo "<td>" . $row['sessionsid'] . "</td>";
		  
		  echo "<td>" . $row['tel'] . "</td>";
		  echo "<td>" . $row['menu'] . "</td>";
		  echo "<td>" . $row['mainmenu'] . "</td>";
		  echo "<td>".$row['catogory']."</td>";
		  echo " <td>".$row['created_at']."</td>";
		  echo "<td>".$row['publish']."</td>";
		  echo "<td>".$row['publishtype']."</td>";
		  echo  "<td>".$row['message']."</td>";
		  echo "<td> <a href='app.php?id=".$row['sessionsid']."'>view </a> </td>";
		  echo "</tr>";
		}
echo "</table>";

?>