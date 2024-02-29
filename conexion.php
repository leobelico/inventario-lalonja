<?php

$servername = "localhost";
$username = "id21942586_leoesatodamadre";
$password = "Lalonja123$";
$database = "id21942586_inventario_lalonja";

$mysqli = new mysqli($servername, $username, $password, $database);

if ($mysqli->connect_errno) {
    echo "Fallo al conectar a MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}

?>
