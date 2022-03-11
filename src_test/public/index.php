<?php

$serverName = '192.168.0.22';
$username = 'root';
$password = 'password';
 
$conn = mysqli_connect($serverName, $username, $password);
if (!$conn) {
   exit('ERROr __ Connection failed: '.mysqli_connect_error().PHP_EOL);
}
 
echo 'OKE __ HELLO Successful databaseYAQ connection!'.PHP_EOL;

#phpinfo();