<?php
include 'conexion.php';

// Verificar si se ha enviado el formulario
if (isset($_POST['email'])) {
    // Obtener datos del formulario
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Consulta SQL para verificar las credenciales
    $sql = "SELECT * FROM usuarios WHERE correo = '$email' AND pass = '$password'";
    $result = $mysqli->query($sql);

    // Verificar si hay un usuario con las credenciales proporcionadas
    if ($result->num_rows > 0) {
        // Obtener el nombre del usuario
        $usuario = $result->fetch_assoc();
        $nombre = $usuario['nombre'];

        // Iniciar sesión
        session_start();

        // Establecer la variable de sesión
        $_SESSION["nombre"] = $nombre;

        // Inicio de sesión exitoso
        header("Location: index.php");
        exit();
    } else {
        // Inicio de sesión fallido
        header("Location: login.php");
        exit();
    }
}

// Cerrar la conexión a la base de datos (opcional en este caso)
// $mysqli->close();
?>
