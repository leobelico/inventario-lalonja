<?php

require_once 'conexion.php';
if ($_SERVER["REQUEST_METHOD"] == "POST") {
 
    $nombreProveedor = $_POST['name'];
    $correoProveedor = $_POST['email'];
    $telefonoProveedor = $_POST['phone'];
    $direccionProveedor = $_POST['message'];

   
    $sql = "INSERT INTO provedores (provedor, correo, telefono, direccion) VALUES (?, ?, ?, ?)";

    $stmt = $mysqli->prepare($sql);

    $stmt->bind_param("ssss", $nombreProveedor, $correoProveedor, $telefonoProveedor, $direccionProveedor);

    $result = $stmt->execute();

    if ($result) {
        echo "Datos insertados correctamente.";
    } else {
        echo "Error al insertar datos: " . $stmt->error;
    }

    $stmt->close();
}

$mysqli->close();
?>