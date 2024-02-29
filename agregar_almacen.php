<?php
include('conexion.php'); // Asegúrate de incluir tu archivo de conexión

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Verifica que se haya enviado la solicitud mediante POST

    // Obtén el id_almacen de la solicitud POST
    $idAlmacen = $_POST['idAlmacen'];

    // Realiza la actualización en la base de datos
    $updateQuery = "UPDATE almacen SET cantidad = cantidad + 1, costo_act = costo_act + costo_tot WHERE id_almacen = ?";

    
    $stmt = $mysqli->prepare($updateQuery);
    $stmt->bind_param('i', $idAlmacen);
    
    if ($stmt->execute()) {
        // La actualización fue exitosa
        echo json_encode(['status' => 'success', 'message' => 'Actualización exitosa']);
    } else {
        // Hubo un error en la actualización
        echo json_encode(['status' => 'error', 'message' => 'Error al actualizar']);
    }

    $stmt->close();
} else {
    // Si la solicitud no es mediante POST, devolver un mensaje de error
    echo json_encode(['status' => 'error', 'message' => 'Solicitud no válida']);
}

$mysqli->close();
?>
