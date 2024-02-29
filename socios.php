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

if ($_SERVER["REQUEST_METHOD"] == "POST") { 
    $id_socios_array = $_POST["id_socios"];
    $inventario_final_array = $_POST["i_f"];
    $venta_registrada_array = $_POST["venta_r"];

    // Itera sobre los arrays y actualiza la base de datos
    for ($i = 0; $i < count($id_socios_array); $i++) {
        $id_socios = $id_socios_array[$i];
        $inventario_final = $inventario_final_array[$i];
        $venta_registrada = $venta_registrada_array[$i];

        // Asegúrate de que el valor de inventario_final se maneje correctamente
        // Si es NULL, se asignará NULL en la consulta, de lo contrario, se asignará el valor
        $inventario_final = ($inventario_final === "") ? "NULL" : $inventario_final;
    
        // Actualiza la base de datos y marca como actualizado solo si inventario_final no es NULL
        $update_query = "UPDATE socios SET i_f = $inventario_final, fecha_actualizacion = NOW(), venta_r = '$venta_registrada'" . ($inventario_final === "NULL" ? "" : ", actualizado = 1") . " WHERE id_socios = $id_socios";
        $mysqli->query($update_query);
    }

    // Redirige a la misma página para evitar reenviar el formulario al recargar
    header('Location: socios.php');
    exit();
}


$consulta_inventario = "SELECT * FROM socios";
$resultado_inventario = $mysqli->query($consulta_inventario);

$consulta_fecha = "SELECT fecha_actualizacion FROM socios ORDER BY fecha_actualizacion DESC LIMIT 1";
$resultado_fecha = $mysqli->query($consulta_fecha);

// Verificar si se obtuvieron resultados
if ($resultado_fecha && $resultado_fecha->num_rows > 0) {
    $fila_fecha = $resultado_fecha->fetch_assoc();
    $ultima_fecha_actualizacion = $fila_fecha['fecha_actualizacion'];
} else {
    $ultima_fecha_actualizacion = "No hay fecha de actualización disponible";
}
// Obtén datos actualizados con fecha de actualización
$consulta_exportar = "SELECT id_socios, costo_tot, producto, mililitros, i_i, i_f, costo_act, venta_r, ((mililitros * i_i - mililitros * i_f) / 90) AS temp_venta_aproximada, (((mililitros * i_i - mililitros * i_f) / 90) - venta_r) AS temp_diferencia_venta, fecha_actualizacion FROM socios";
$resultado_exportar = $mysqli->query($consulta_exportar);

// Verifica si se solicitó la exportación a Excel
if (isset($_GET['exportar_excel'])) {
    // Crear archivo Excel
    $filename = 'Inventario_socios_' . date('Ymd') . '.xls';
    header('Content-type: application/ms-excel');
    header('Content-Disposition: attachment; filename=' . $filename);

    echo "ID\tCosto Total\tProducto\tMililitros\tInventario Inicial\tInventario Final\tCosto Actual\tVenta Registrada\tVenta Aproximada\tDiferencia de Venta\tFecha de Actualización\n";

    while ($fila_exportar = $resultado_exportar->fetch_assoc()) {
        echo "{$fila_exportar['id_socios']}\t{$fila_exportar['costo_tot']}\t{$fila_exportar['producto']}\t{$fila_exportar['mililitros']}\t{$fila_exportar['i_i']}\t{$fila_exportar['i_f']}\t{$fila_exportar['costo_act']}\t{$fila_exportar['venta_r']}\t{$fila_exportar['temp_venta_aproximada']}\t{$fila_exportar['temp_diferencia_venta']}\t{$fila_exportar['fecha_actualizacion']}\n";
    }

    exit();
}
?>



  <!DOCTYPE html>
  <html>
  <head>
  <link rel="icon" href="https://imgs.search.brave.com/pBUmqNmrfCEkLG_fIGVPj1HspRHgQ3BWR05x_C9Cl64/rs:fit:32:32:1/g:ce/aHR0cDovL2Zhdmlj/b25zLnNlYXJjaC5i/cmF2ZS5jb20vaWNv/bnMvZGM2MjYwZTUy/YTUxOGU1MWQ0Mzdh/OTU1N2FmMjBlOWRi/ZmUzZDBmYjhmNjhh/Mjg1ZDQ5OGVmMDUx/OGMxYTZjYi9sYWxv/bmphLmNvbS5teC8" type="image/png">

      <title>Consultar Socios</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
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
                          <li class="nav-item"><a class="nav-link" href="#!">Bares</a></li>
                      </ul>
                  </div>
                  <a class="navbar-brand" href="#" id="open-modal"><?php  echo isset($_SESSION['nombre']) ? $_SESSION['nombre'] : header("Location: pagueErrorlogin.php"); ?></a>
  
              </div>
          </nav>
      
      
      <!-- place navbar here -->

    </header>

  <br>
  </head>

  <body style="font-family: Roboto;">
    
  <!-- Tabla español -->
  <script>
      $(document).ready(function () {
          $('#table').DataTable({
            "paging": false, 
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

  <div class="container">
  <h1 style="font-size: bold; text-align: center;">Consultar Inventario <i class="fa-solid fa-magnifying-glass"></i></h1>
  </div> 

  <!-- Breadcrumbs -->
  <div class="container-fluid mt-3">
    <div>
        <p>Última fecha de actualización: <?php echo $ultima_fecha_actualizacion; ?></p>
    </div>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.php">Inicio</a></li>
            <li class="breadcrumb-item active" aria-current="page">Consultar Inventario Socios</li>
        </ol>
    </nav>
</div>

  <div class="container2">
    <div class="table-responsive">
        <form method="POST" action="">
            <table class="table table-striped" id="table" style="width: 100%;">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Costo total</th>
                    <th>Producto</th>
                    <th>Mililitros</th>
                    <th>Inventario Inicial</th>
                    <th>Inventario Final</th>
                    <th>Costo actual</th>
                    <th>Venta registrada</th>
                    <th>Venta Aproximada</th>
                    <th>Diferencia de Venta</th>
                </tr>
                </thead>
                <tbody>
                <?php while ($info_inventario = $resultado_inventario->fetch_assoc()): ?>
                    <tr>
                        <td><?php echo $info_inventario['id_socios']; ?></td>
                        <td><?php echo $info_inventario['costo_tot']; ?></td>
                        <td><?php echo $info_inventario['producto']; ?></td>
                        <td><?php echo $info_inventario['mililitros']; ?></td>
                        <td><?php echo $info_inventario['i_i']; ?></td>
                        <td>
                    <!-- Campos ocultos para identificar la fila -->
                            <input type="hidden" name="id_socios[]" value="<?php echo $info_inventario['id_socios']; ?>">
                            <!-- Campo editable i_f -->
                            <input type="text" name="i_f[]" value="<?php echo $info_inventario['i_f']; ?>" class="form-control form-control-md">
                        </td>
                        <td><?php echo $info_inventario['costo_act']; ?></td>
                        <td>
                            <input type="text" name="venta_r[]" value="<?php echo $info_inventario['venta_r']; ?>"class="form-control form-control-md">
                        </td>
                        <td>
                          <?php
                          $diferencia_ml = ($info_inventario['mililitros'] * $info_inventario['i_i']) - ($info_inventario['mililitros'] * $info_inventario['i_f']);
                          $venta_aproximada = ($diferencia_ml != 0) ? $diferencia_ml / 90 : ($info_inventario['mililitros']*$info_inventario['i_i'])/90;
                          echo number_format($venta_aproximada, 2);
                          ?>
                      </td>
                      <td><?php if($info_inventario['venta_r']==0){
                      echo "No hubo registros";
                    }else{
                      $diferencia_ml = ($info_inventario['mililitros'] * $info_inventario['i_i']) - ($info_inventario['mililitros'] * $info_inventario['i_f']);
                      $venta_aproximada = ($diferencia_ml != 0) ? $diferencia_ml / 90 : ($info_inventario['mililitros'] * $info_inventario['i_i']) / 90;
                      $diferencia_venta = $venta_aproximada - $info_inventario['venta_r'];
                      echo number_format($diferencia_venta, 2);
                    } ?></td>

                    </tr>
                <?php endwhile; ?>
                </tbody>
            </table>
            <button type="submit" class="btn btn-primary">Actualizar</button>
            <button type="button" id="exportarExcel" class="btn btn-primary">Exportar Excel</button>
            <button type="button" id="terminar" class="btn btn-danger">Terminar inventario del <?php echo date('d-m-Y'); ?></button>   
             </form>
    </div>
</div>

      
      <footer class="py-5 bg-dark">
              <div class="container px-5"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p></div>
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
          <!-- Bootstrap core JS-->
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
          <!-- Core theme JS-->
          <script src="js/scripts.js"></script>
          <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
          <!-- * *                               SB Forms JS                               * *-->
          <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
          <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
          <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

  <!-- Bootstrap JavaScript Libraries -->

  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"

  integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">

  </script>



  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"

  integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">

  </script>
  <script>
  $(document).ready(function () {
    // Asigna un evento clic al botón
    $('#exportarExcel').on('click', function () {
      // Redirige a la página de exportación
      window.location.href = 'excel_socios.php';
    });
  });
</script>

<script>
        $(document).ready(function () {
            $('#terminar').on('click', function () {
                if (confirm('¿Estás seguro de terminar el inventario?')) {
                    // Realiza una petición al servidor para actualizar inventario
                    $.ajax({
                        type: 'POST',
                        url: 'actualizar_inventario_s.php', // Reemplaza esto con la ruta correcta a tu script de actualización
                        success: function (response) {
                            alert('Inventario actualizado correctamente.');
                            // Puedes agregar más lógica aquí después de la actualización
                            location.reload();
                        },
                        error: function () {
                            alert('Hubo un error al actualizar el inventario.');
                        }
                    });
                }
            });
        });
    </script>

  <script>
    $(document).ready(function () {
      var dataTable = $('#table').DataTable();

      // Crea el botón personalizado con clases de Bootstrap y estilos personalizados
      var customButton = $('<a href="crear-Contratos.php" class="btn btn-primary" style="background-color: #fff; color: #007bff;">Crear contrato</a>');

      // Agrega el botón antes del cuadro de búsqueda
      $('.dataTables_filter').prepend(customButton);
      "paging": false, 
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