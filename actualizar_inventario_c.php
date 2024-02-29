<?php
include('conexion.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") { 
    $update_query = "UPDATE cotillon SET i_i = i_f, costo_act=i_f*costo_tot,i_f = NULL,venta_r = 0, actualizado = 0 WHERE actualizado = 1";

    if ($mysqli->query($update_query)) {
        echo "Inventario actualizado correctamente.";
        header("Location: cotillon.php");
        exit(); 
    } else {
        echo "Error al actualizar el inventario: " . $mysqli->error;
    }
}
?>
