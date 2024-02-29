<?php
include('conexion.php');

// Recibe los datos del formulario
$id_almacen = $_POST["id_almacen"];
$cantidad = $_POST["cantidad"];
$destino = $_POST["destino"];
$costo =$_POST["costo"];
if ($destino == 'cotillon') {

     $consulta_cotillon = "UPDATE cotillon SET i_i = i_i + ? WHERE id_cotillon = ?";
     $stmt = $mysqli->prepare($consulta_cotillon);
     $stmt->bind_param("ii", $cantidad, $id_almacen);
     $stmt->execute();
     $consulta_resta_almacen = "UPDATE almacen SET cantidad = cantidad - ?, costo_act = costo_tot * cantidad WHERE id_almacen = ?";

     $stmt_resta = $mysqli->prepare($consulta_resta_almacen);
     $stmt_resta->bind_param("ii", $cantidad, $id_almacen);
 
     $stmt_resta->execute();
} elseif ($destino == 'socios') {
    $consulta_socios = "UPDATE socios SET i_i = i_i + ? WHERE id_socios = ?";
    $stmt = $mysqli->prepare($consulta_socios);
    $stmt->bind_param("ii", $cantidad, $id_almacen);
    $stmt->execute();
    
    // Además, resta la cantidad de la tabla almacen
    $consulta_resta_almacen = "UPDATE almacen SET cantidad = cantidad - ?, costo_act = costo_tot * cantidad WHERE id_almacen = ?";

    $stmt_resta = $mysqli->prepare($consulta_resta_almacen);
    $stmt_resta->bind_param("ii", $cantidad, $id_almacen);

    $stmt_resta->execute();
}
exit();
?>