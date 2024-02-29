<?php
session_start();

// Verificar si la sesión no está activa
if (!isset($_SESSION['nombre'])) {
    // Redireccionar a la pantalla de error o a otra página
    header("Location: login.php");
    exit();
}
?>
<?php

include('conexion.php');

$consulta_inventario = "SELECT * FROM almacen";
$resultado_inventario = $mysqli->query($consulta_inventario);


?>


<!DOCTYPE html>
<html>

<head>
<link rel="icon" href="https://imgs.search.brave.com/pBUmqNmrfCEkLG_fIGVPj1HspRHgQ3BWR05x_C9Cl64/rs:fit:32:32:1/g:ce/aHR0cDovL2Zhdmlj/b25zLnNlYXJjaC5i/cmF2ZS5jb20vaWNv/bnMvZGM2MjYwZTUy/YTUxOGU1MWQ0Mzdh/OTU1N2FmMjBlOWRi/ZmUzZDBmYjhmNjhh/Mjg1ZDQ5OGVmMDUx/OGMxYTZjYi9sYWxv/bmphLmNvbS5teC8" type="image/png">

    <title>Consultar Almacen</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />


    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
    <script type="text/javascript" charset="utf8"
        src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <style>
        .container {
            margin: 0% auto;
            align-items: center;
            justify-content: center;
            display: flex;
        }

        .form {
            justify-content: center;
            align-items: center;
            margin-left: 100px;
            margin-right: 100px;
        }

        .p {
            background-color: whithe;
            height: 20px;
            width: 200px;
        }

        .container2 {
            width: 80%;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
        }

        .button-container {
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
        }
    </style>

    <script>
        $(document).ready(function () {
            $('#table').DataTable({
                "language": {
                    "sProcessing": "Procesando...",
                    "sLengthMenu": "Mostrar _MENU_ registros",
                    "sZeroRecords": "No se encontraron resultados",
                    "sEmptyTable": "Ningún dato disponible en esta tabla",
                    "sInfo": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                    "sInfoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                    "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
                    "sInfoPostFix": "",
                    "sSearch": "Buscar:",
                    "sUrl": "",
                    "sInfoThousands": ",",
                    "sLoadingRecords": "Cargando...",
                    "oPaginate": {
                        "sFirst": "Primero",
                        "sLast": "Último",
                        "sNext": "Siguiente",
                        "sPrevious": "Anterior"
                    },
                    "oAria": {
                        "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
                        "sSortDescending": ": Activar para ordenar la columna de manera descendente"
                    }
                }
            });
        });
    </script>

    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">

    <header style="font-family: Roboto;">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-5">
                <a class="navbar-brand" href="#!">Inventario La Lonja</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page"
                                href="index.php">Inicio</a></li>
                        <li class="nav-item"><a class="nav-link" href="creaProvedor.php">Provedores</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Compras</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Bares</a></li>
                    </ul>
                </div>
                <a class="navbar-brand" href="#" id="open-modal"><?php  echo isset($_SESSION['nombre']) ? $_SESSION['nombre'] : header("Location: pagueErrorlogin.php"); ?></a>
  
            </div>
        </nav>
    </header>

    <br>
</head>

<body style="font-family: Roboto;">

    <div class="container">
        <h1 style="font-size: bold; text-align: center;">Consultar Almacen <i
                class="fa-solid fa-magnifying-glass"></i></h1>
    </div>

    <div class="container-fluid mt-3">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.php">Inicio</a></li>
                <li class="breadcrumb-item active" aria-current="page">Almacen</li>
            </ol>
        </nav>
    </div>

    <div class="container2">
        <div class="table-responsive">
            <table class="table table-striped" id="table" style="width: 100%;">
                <thead>
                    <tr>
                        <th>ID </th>
                        <th>Costo total</th>
                        <th>Producto</th>
                        <th>Mililitros</th>
                        <th>Cantidad (botellas)</th>
                        <th>Costo actual</th>
                        <th> Enviar a </th>
                    </tr>
                </thead>
                <tbody>
                    <?php while ($info_inventario = $resultado_inventario->fetch_assoc()): ?>
                        <tr>
                            <td><?php echo $info_inventario['id_almacen']; ?></td>
                            <td><?php echo $info_inventario['costo_tot']; ?></td>
                            <td><?php echo $info_inventario['producto']; ?></td>
                            <td><?php echo $info_inventario['mililitros']; ?></td>
                            <td>
                            <button type="button" class="btn btn-danger" data-toggle="modal"
                                data-target="#quitaModal<?php echo $info_inventario['id_almacen']; ?>">
                                <i class="fa-solid fa-minus"></i> 1
                            </button>    
                          <b><h7> <?php echo $info_inventario['cantidad']; ?> </h7> </b>  
                            <button type="button" class="btn btn-primary" data-toggle="modal"
                                data-target="#agregarModal<?php echo $info_inventario['id_almacen']; ?>">
                                <i class="fa-solid fa-plus"></i> 1
                            </button>

                            <td><?php echo $info_inventario['costo_act']; ?></td>

                            <td>
            <button type="button" class="btn btn-success" data-toggle="modal"
                data-target="#editarModal<?php echo $info_inventario['id_almacen']; ?>"><i
                    class='fas fa-edit'></i></button>
        </td>
    </tr>

    <div class="modal fade" id="agregarModal<?php echo $info_inventario['id_almacen']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Confirmar acción</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>¿Estás seguro de que quieres agregar una botella?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
                <button type="button" class="btn btn-success" onclick="confirmAction(<?php echo $info_inventario['id_almacen']; ?>)">Sí</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="quitaModal<?php echo $info_inventario['id_almacen']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Confirmar acción</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>¿Estás seguro de que quieres quitar una botella?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
                <button type="button" class="btn btn-success" onclick="quitAction(<?php echo $info_inventario['id_almacen']; ?>)">Sí</button>
            </div>
        </div>
    </div>
</div>


    <!-- Modal -->
    <div class="modal fade" id="editarModal<?php echo $info_inventario['id_almacen']; ?>" tabindex="-1"
        role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Selecciona un destino</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!-- Formulario para enviar la información al servidor -->
                    <form action="editar_almacen.php" method="post">
                        <!-- Label para la cantidad -->
                        <label for="cantidad">Cantidad:</label>
                        <!-- Input de tipo number para la cantidad -->
                        <input type="number" id="cantidad" name="cantidad" class="form-control" min="1" required>
                        <!-- Campo oculto para enviar el ID de almacen -->
                        <input type="hidden" name="id_almacen" value="<?php echo $info_inventario['id_almacen']; ?>">
                        <input type="hidden" name="costo" value="<?php echo $info_inventario['costo_tot']; ?>">
                        <!-- Campo oculto para enviar el destino -->
                        <input type="hidden" name="destino" id="destino<?php echo $info_inventario['id_almacen']; ?>" value="">
                        <!-- Botones para enviar a Cotillón y Socios -->
                        <button type="button" class="btn btn-info" onclick="enviarA('cotillon', <?php echo $info_inventario['id_almacen']; ?>)">Enviar a Cotillón</button>
                        <button type="button" class="btn btn-success" onclick="enviarA('socios', <?php echo $info_inventario['id_almacen']; ?>)">Enviar a Socios</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
<?php endwhile; ?>

                </tbody>
            </table>
        </div>
    </div>

    <footer class="py-5 bg-dark">
        <div class="container px-5">
            <p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p>
        </div>
    </footer>

<style>
            #logout-modal {
      display: none;
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: rgba(0, 0, 0, 0.7);
      z-index: 999;
  }

  .modal-content {
      background: #fff;
      width: 300px;
      margin: 100px auto;
      padding: 20px;
      text-align: center;
      border-radius: 5px;
  }

  #confirm-logout, #cancel-logout {
      margin-top: 10px;
      padding: 5px 10px;
      cursor: pointer;
  }
  </style>
    <div id="logout-modal" class="modal">
<div class="modal-content">
    <h2>Cerrar Sesión</h2>
    <p>¿Estás seguro de que deseas cerrar sesión?</p>
    <button class="btn btn-primary"id="confirm-logout">Cerrar Sesión</button>
    <button id="cancel-logout">Cancelar</button>
</div>
</div>
<script>
  $(document).ready(function () {
    $("#open-modal").click(function () {
        $("#logout-modal").show();
    });

    $("#cancel-logout").click(function () {
        $("#logout-modal").hide();
    });

    $("#confirm-logout").click(function () {
    $.ajax({
        url: "cerrar_sesion.php",
        type: "POST",
        success: function (response) {
            window.location.href = "login.php";
        }
    });
});

});
</script>
    <script>
 function enviarA(destino, id_almacen) {
    // Setea el valor del campo oculto "destino" con el valor correspondiente (cotillon o socios)
    document.getElementById('destino' + id_almacen).value = destino;
    // Encuentra y envía el formulario asociado al botón que se hizo clic
    document.querySelector('#editarModal' + id_almacen + ' form').submit();
}

</script>
    <script>
        $(document).ready(function () {
            var dataTable = $('#table').DataTable();

            // Crea el botón personalizado con clases de Bootstrap y estilos personalizados
            var customButton = $(
                '<a href="crear_producto.php" class="btn btn-primary" style="background-color: #fff; color: #007bff;">Crear producto</a>'
            );

            // Agrega el botón antes del cuadro de búsqueda
            $('.dataTables_filter').prepend(customButton);

            // Agrega eventos de mouse al botón personalizado
            customButton.on({
                mouseenter: function () {
                    // Cambia el color al pasar el mouse sobre el botón
                    $(this).css('background-color', '#007bff');
                    $(this).css('color', '#fff');
                },
                mouseleave: function () {
                    // Restaura los colores originales al salir del botón
                    $(this).css('background-color', '#fff');
                    $(this).css('color', '#007bff');
                }
            });

            // Inicializa DataTable
            dataTable.DataTable();
        });
    </script>

<script>
    function confirmAction(idAlmacen) {
        // Verifica si el ID del almacén es válido
        if (idAlmacen) {
            // Ejemplo de uso de AJAX
            $.post('agregar_almacen.php', { accion: 'agregarBotella', idAlmacen: idAlmacen }, function (response) {
                // Manejar la respuesta del servidor si es necesario
                console.log(response);
                location.reload();
            });

            // Cerrar el modal después de realizar la actualización
            $('#agregarModal' + idAlmacen).modal('hide');
        }
    }

    function quitAction(idAlmacen) {
        // Verifica si el ID del almacén es válido
        if (idAlmacen) {
            // Ejemplo de uso de AJAX
            $.post('quitar_almacen.php', { accion: 'agregarBotella', idAlmacen: idAlmacen }, function (response) {
                // Manejar la respuesta del servidor si es necesario
                console.log(response);
                location.reload();
            });

            // Cerrar el modal después de realizar la actualización
            $('#agregarModal' + idAlmacen).modal('hide');
        }
    }
</script>

</body>

</html>
