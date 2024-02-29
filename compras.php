
<?php
include('conexion.php');

$consulta_inventario = "SELECT * FROM compras";
$resultado_inventario = $mysqli->query($consulta_inventario);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Consultar Contrato</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  

  <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <style>

        .container {

            margin: 0% auto;

            align-items: center;

            justify-content: center;

           

           display: flex;

        }

        .form{

           

           justify-content: center;

           align-items: center;

          /* padding-right: 20%;*/

          margin-left: 100px;

          margin-right: 100px;

 

 

        }

 

        .p{

            background-color: whithe;

            height: 20px;

            width:200px;

        }

        .container2 {

        width: 80%; /* Puedes ajustar el ancho según tus necesidades */

        margin: 0 auto; /* Esto centrará el contenedor horizontalmente */

        background-color: #ffffff; /* Fondo blanco */

        padding: 20px; /* Añade un relleno para mejorar la apariencia */

        border-radius: 10px; /* Puedes ajustar el radio de borde según tus preferencias */

        }

 

        .button-container {

        display: flex;

        flex-direction: row;

        align-items: center;

        justify-content: center;

       

       

      }

    </style>

 

<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">

<header style="font-family: Roboto;">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-5">
                <a class="navbar-brand" href="#!">Inventario La Lonja</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="index.php">Inicio</a></li>
                        <li class="nav-item"><a class="nav-link" href="creaProvedor.php">Provedores</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Compras</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Bares</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    
    
    <!-- place navbar here -->

  </header>

<br>
</head>

<body style="font-family: Roboto;">
  
<!-- Tabla español -->


<div class="container">
<h1 style="font-size: bold; text-align: center;">Consultar Compras <i class="fa-solid fa-magnifying-glass"></i></h1>
</div> 

<!-- Breadcrumbs -->
<div class="container-fluid mt-3">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="inicio.php">Inicio</a></li>
          <li class="breadcrumb-item active" aria-current="page">Consultar Contratos</li>
        </ol>
      </nav>
</div>

    <div class="container2">
      <div class="table-responsive">
        <table class="table table-striped" id="table" style="width: 100%;">
            <thead>
                <tr>
                    <th>Folio</th>
                    <th>Fecha compra</th>
                    <th>Provedor</th>
                    <th>Cantidad</th>
                    <th>Producto</th>
                    <th>Costo unitario</th>
                    <th>Costo con iva</th>
                    <th>Total acumulado</th>
                    <th><a class="btn btn-outline-light btn-lg px-4" href="almacen.php">Almacen</a></th>
                </tr>
            </thead>
            <tbody>
                <?php while ($info_inventario = $resultado_inventario->fetch_assoc() ): ?>                    <tr>
                        <td><?php echo $info_inventario['folio']; ?></td>
                        <td><?php echo $info_inventario['fecha_c']; ?></td>
                        <td><?php echo $info_inventario['provedor']; ?></td>
                        <td><?php echo $info_inventario['cantidad']; ?></td>
                        <td><?php echo $info_inventario['producto']; ?></td>
                        <td><?php echo $info_inventario['cost_unitario']; ?></td>
                        <td><?php echo $info_inventario['total_iva_desc']; ?></td>
                        <td><?php echo $info_inventario['total']; ?></td>
                       
                     

                        <td>
                            <button type="button" id="verde" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#editarModal<?php echo $info_inventario['id']; ?>"><i class='fas fa-edit'></i></button>
                            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#eliminarModal<?php echo $info_inventario['id']; ?>"><i class='fas fa-trash-alt'></i></button>
                        </td>
                    </tr>

                <?php endwhile; ?>
        
            </tbody>
        </table>
      </div>  
    </div>

    <div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Selecciona un destino</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!-- Label para la cantidad -->
                <label for="cantidad">Cantidad:</label>
                <!-- Input de tipo number para la cantidad -->
                <input type="number" id="cantidad" name="cantidad" class="form-control" min="1" required>
                    <p>
                <!-- Botones para enviar a Cotillón y Socios -->
                <button type="button" class="btn btn-info" onclick="enviarA('cotillon')">Enviar a Cotillón</button>
                <button type="button" class="btn btn-success" onclick="enviarA('socios')">Enviar a Socios</button>
            </div>
        </div>
    </div>
</div>

    
    <footer class="py-5 bg-dark">
            <div class="container px-5"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p></div>
        </footer>


</script>
<script>
    $(document).ready(function () {
        // Evento click para el botón verde
        $('#verde').on('click', function () {

            $('#myModal').modal('show');
        });

        // Resto de tu código...
    });
</script>
<script>
    function enviarA(destino) {
        // Puedes realizar acciones aquí según el destino seleccionado (bar, cotillon, socios)
        // Puedes enviar esta información al servidor a través de AJAX si es necesario
        alert("Enviar a: " + destino);
        // Cierra el modal después de hacer las acciones necesarias
        $('#myModal').modal('hide');
    }
</script>
<script>
  $(document).ready(function () {
    var dataTable = $('#table').DataTable();

    // Crea el botón personalizado con clases de Bootstrap y estilos personalizados
    var customButton = $('<a href="crear-Contratos.php" class="btn btn-primary" style="background-color: #fff; color: #007bff;">Crear contrato</a>');

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

</body>
</html>