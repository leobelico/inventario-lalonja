
<!DOCTYPE html>
<?php
session_start();

// Verificar si la sesión no está activa
if (!isset($_SESSION['nombre'])) {
    // Redireccionar a la pantalla de error o a otra página
    header("Location: login.php");
    exit();
}
?>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Inventario</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-5">
                <a class="navbar-brand" href="#!">Inventario La Lonja</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="index.php">Inicio</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Provedores</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Compras</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Bares</a></li>
                    </ul>
                </div>
            </div>
        </nav>
      
     
     
        <!-- Contact section-->
        <section class="bg-light py-5">
            <div class="container px-5 my-5 px-5">
                <div class="text-center mb-5">
                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="fa-brands fa-product-hunt"></i></div>
                    <h2 class="fw-bolder">Crea un producto</h2>
    
                </div>
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-6">
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- * * SB Forms Contact Form * *-->
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- This form is pre-integrated with SB Forms.-->
                        <!-- To make this form functional, sign up at-->
                        <!-- https://startbootstrap.com/solution/contact-forms-->
                        <!-- to get an API token!-->
                        <form method="post" action="producto.php">
    <!-- Name input -->
    <div class="form-floating mb-3">
        <input class="form-control" id="name" name="name" type="text" placeholder="Enter your name..." />
        <label for="name">Producto</label>
    </div>
    <!-- Email address input -->
    <div class="form-floating mb-3">
        <input class="form-control" id="costo" name="costo" type="numeric" />
        <label for="costo">Costo total </label>
    </div>
    <!-- Phone number input -->
    <div class="form-floating mb-3">
        <input class="form-control" id="ml" name="ml" type="numeric"  />
        <label for="ml">Mililitros</label>
    </div>
    <!-- Message input -->
    <div class="form-floating mb-3">
        <textarea class="form-control" id="cantidad" name="cantidad" type="numeric" placeholder="Enter your message here..." style="height: 10rem"></textarea>
        <label for="cantidad">Cantidad</label>
    </div>

    <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">Error sending message!</div></div>
    <!-- Submit Button -->
    <div class="d-grid"><button class="btn btn-primary" id="submitButton" type="submit">Enviar</button></div>
</form>

                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container px-5"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </body>
</html>
