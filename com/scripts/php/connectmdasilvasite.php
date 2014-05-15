<?php

$hostname = "mysql.mannydasilva.com";   // eg. mysql.yourdomain.com (unique)
$username = "mcd421";   // the username specified when setting-up the database
$password = "174884";   // the password specified when setting-up the database
$database = "mdasilvasite";   // the database name chosen when setting-up the database (unique)

$link = mysql_connect($hostname,$username,$password);
mysql_select_db($database) or die("Unable to select database");

?>
