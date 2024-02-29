<?php
session_start();

// Verificar si la sesión no está activa
if (!isset($_SESSION['nombre'])) {
    // Redireccionar a la pantalla de error o a otra página
    header("Location: login.php");
    exit();
}
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
                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-envelope"></i></div>
                    <h2 class="fw-bolder">Crea un provedor</h2>
                    <p class="lead mb-0">Si no has creado un provedor crea uno</p>
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
                        <form method="post" action="Provedor.php">
    <!-- Name input -->
    <div class="form-floating mb-3">
        <input class="form-control" id="name" name="name" type="text" placeholder="Enter your name..." />
        <label for="name">Nombre provedor</label>
    </div>
    <!-- Email address input -->
    <div class="form-floating mb-3">
        <input class="form-control" id="email" name="email" type="email" placeholder="name@example.com" />
        <label for="email">Correo electronico</label>
    </div>
    <!-- Phone number input -->
    <div class="form-floating mb-3">
        <input class="form-control" id="phone" name="phone" type="tel" placeholder="(123) 456-7890" />
        <label for="phone">Numero de telefono</label>
    </div>
    <!-- Message input -->
    <div class="form-floating mb-3">
        <textarea class="form-control" id="message" name="message" type="text" placeholder="Enter your message here..." style="height: 10rem"></textarea>
        <label for="message">Direccion</label>
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
    </body>
</html>
