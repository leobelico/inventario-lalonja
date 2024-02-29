<?php

require_once 'conexion.php';
if ($_SERVER["REQUEST_METHOD"] == "POST") {
 
    $nombreProducto = $_POST['name'];
    $costoProducto = $_POST['costo'];
    $mlProducto = $_POST['ml'];
    $cantidadProducto = $_POST['cantidad'];

    // Hacer el insert en la tabla almacen
    $sqlAlmacen = "INSERT INTO almacen (producto, costo_tot, mililitros, cantidad, costo_act) VALUES (?, ?, ?, ?, ?)";
    $stmtAlmacen = $mysqli->prepare($sqlAlmacen);
    $costo_actual = ($costoProducto * $cantidadProducto);
    $stmtAlmacen->bind_param("siisi", $nombreProducto, $costoProducto, $mlProducto, $cantidadProducto, $costo_actual);

    $resultAlmacen = $stmtAlmacen->execute();

    if ($resultAlmacen) {
        echo "Datos insertados correctamente en la tabla almacen.";

        // Hacer los inserts en las tablas cotillon y socios
        $sqlCotillon = "INSERT INTO cotillon ( producto, costo_tot, mililitros, i_i, costo_act) VALUES ( ?, ?, ?, ?, ?)";
        $stmtCotillon = $mysqli->prepare($sqlCotillon);
        $stmtCotillon->bind_param("siiii", $nombreProducto, $costoProducto, $mlProducto, $cantidadProducto, $costo_actual);
        $resultCotillon = $stmtCotillon->execute();

        $sqlSocios = "INSERT INTO socios ( producto, costo_tot, mililitros, i_i, costo_act) VALUES ( ?, ?, ?, ?, ?)";
        $stmtSocios = $mysqli->prepare($sqlSocios);
        $stmtSocios->bind_param("siiii", $nombreProducto, $costoProducto, $mlProducto, $cantidadProducto, $costo_actual);
        $resultSocios = $stmtSocios->execute();

        if ($resultCotillon && $resultSocios) {
            echo "Datos insertados correctamente en las tablas cotillon y socios.";
            header("Location: crear_producto.php");
        } else {
            echo "Error al insertar datos en las tablas cotillon y socios: " . $stmtCotillon->error . " - " . $stmtSocios->error;
        }
    } else {
        echo "Error al insertar datos en la tabla almacen: " . $stmtAlmacen->error;
    }

    $stmtAlmacen->close();
    $stmtCotillon->close();
    $stmtSocios->close();
}

$mysqli->close();
?>
