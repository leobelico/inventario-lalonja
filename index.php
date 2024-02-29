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
// Incluye el archivo de conexión
include 'conexion.php';

// Consulta para obtener la suma de la columna 'costo_act' de la tabla 'socios'
$sqlSocios = "SELECT SUM(costo_act) AS suma_socios FROM socios";
$resultadoSocios = mysqli_query($mysqli, $sqlSocios);
$filaSocios = mysqli_fetch_assoc($resultadoSocios);
$sumaSocios = $filaSocios['suma_socios'];

// Consulta para obtener la suma de la columna 'costo_act' de la tabla 'cotillon'
$sqlCotillon = "SELECT SUM(costo_act) AS suma_cotillon FROM cotillon";
$resultadoCotillon = mysqli_query($mysqli, $sqlCotillon);
$filaCotillon = mysqli_fetch_assoc($resultadoCotillon);
$sumaCotillon = $filaCotillon['suma_cotillon'];

// Consulta para obtener la suma de la columna 'costo_act' de la tabla 'almacen'
$sqlAlmacen = "SELECT SUM(costo_act) AS suma_almacen FROM almacen";
$resultadoAlmacen = mysqli_query($mysqli, $sqlAlmacen);
$filaAlmacen = mysqli_fetch_assoc($resultadoAlmacen);
$sumaAlmacen = $filaAlmacen['suma_almacen'];



// Cierra la conexión
mysqli_close($mysqli);
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="icon" href="https://imgs.search.brave.com/pBUmqNmrfCEkLG_fIGVPj1HspRHgQ3BWR05x_C9Cl64/rs:fit:32:32:1/g:ce/aHR0cDovL2Zhdmlj/b25zLnNlYXJjaC5i/cmF2ZS5jb20vaWNv/bnMvZGM2MjYwZTUy/YTUxOGU1MWQ0Mzdh/OTU1N2FmMjBlOWRi/ZmUzZDBmYjhmNjhh/Mjg1ZDQ5OGVmMDUx/OGMxYTZjYi9sYWxv/bmphLmNvbS5teC8" type="image/png">

        <title>Inventario</title>
        <!-- Favicon-->
         <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-5">
            <img src="assets/logo.png" alt="" style="max-width: 50px; height: auto;">
            <a class="navbar-brand" href="#!">   Inventario La Lonja</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="index.php">Inicio</a></li>
                        <li class="nav-item"><a class="nav-link" href="creaProvedor.php">Provedores</a></li>
                        <li class="nav-item"><a class="nav-link" href="compras.php">Compras</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Bares</a></li>
                        <a class="btn btn-outline-light btn-lg px-4" href="almacen.php">Almacen </a>
                    </ul>
                </div>
             
            </div>
            <a class="navbar-brand" href="#" id="open-modal"><?php  echo isset($_SESSION['nombre']) ? $_SESSION['nombre'] : header("Location: pagueErrorlogin.php"); ?></a>
  
        </nav>
    
        <style>
            body, html {
                height: 100%;
                margin: 0;
            }
    
            .container-full {
                height: 100%;
                display: flex;
                flex-direction: column;
            }
    
            .row-full {
                flex: 1;
                display: flex;
            }
    
            .col-full {
                flex: 1;
            }
        </style>
        <div class="container-full">
            <div class="row-full">
                <div class="col-full bg-dark text-center py-5">
               <br><br> <h2 class="text-white">Fecha <?php echo date('d-m-Y'); ?></h2>
                    <br><H3 class="text-white">Inventarios</h3><br>
                    <h6 class="text-white">
                        Costo actual Socios: $<?php echo number_format($sumaSocios,2); ?> <br>
                        Costo actual Cotillón: $<?php echo number_format($sumaCotillon, 2); ?> <br>
                        Costo actual Almacen: $<?php echo number_format($sumaAlmacen,2); ?> <br>
                    </h6>
                    <h4 class="text-white">Total: $<?php echo number_format($sumaSocios+$sumaCotillon+$sumaAlmacen, 2); ?>
                </div>
                <div class="col-full bg-dark text-center py-0">

                    <!-- Tu header actual -->
                    <header class="bg-dark py-5">
                        <div class="container px-5">
                            <div class="row gx-5 justify-content-center">
                                <div class="col-lg-6">
                                    <div class="text-center my-5">
                                        <h1 class="display-5 fw-bolder text-white mb-2">Bares</h1>
                                        <p class="lead text-white-50 mb-4">Ir al inventario del bar</p>
                                        <div class="d-grid gap-3 d-sm-flex justify-content-sm-center">
                                            <a class="btn btn-primary btn-lg px-4 me-sm-3" href="cotillon.php">Cotillon</a>
                                            <a class="btn btn-outline-light btn-lg px-4" href="socios.php">Socios</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                </div>
                <div class="col-full bg-dark text-center py-5">
                    <p class="text-white">  <br> <h3 class="text-white">Costos Totales</h3>
                    <canvas id="myPieChart"></canvas>
                    </p>
                </div>
            </div>
        </div>

        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container px-5"><p class="m-0 text-center text-white"> &copy; Sociedad Potosina.S.C</p></div>
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
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
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

        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <script>
                    // Configuración del gráfico
                    var ctx = document.getElementById('myPieChart').getContext('2d');
                    var myPieChart = new Chart(ctx, {
                        type: 'pie',
                        data: {
                            labels: ['Socios', 'Cotillón', 'Almacén'],
                            datasets: [{
                                data: [<?php echo $sumaSocios; ?>, <?php echo $sumaCotillon; ?>, <?php echo $sumaAlmacen; ?>],
                                backgroundColor: ['#FF6384', '#36A2EB', '#FFCE56'],
                            }]
                        }
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

    </body>
</html>
