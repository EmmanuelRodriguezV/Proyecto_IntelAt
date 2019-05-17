<?php
    require '../backend/loguear.php';
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="vendor/bootstrap-4.3.1-dist/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/login_style.css">
        <link rel="icon" href="media/images/logoBlanco.png">
        <title>IntelAt</title>
    </head>
    <body>

    
        <div id="nav-bar">
        <div class="error">
        <span>Datos de ingreso no validos,intentalo de nuevo</span>
    </div>
            <div class="logo">
                <a href="index.php">
                    <img src="media/images/CargaOP1.gif">
                    <h3>IntelAt</h3>
                </a>
            </div>
            <div class="content">
                <ul class="nav-links">
                    <li><a href="video.html">Nosotros</a></li>
                    <li><a href="#">Contactanos</a></li>
                    <li><a href="#">Ubicación</a></li>
                </ul>
                <div class="burger">
                    <div class="line1"></div>
                    <div class="line2"></div>
                    <div class="line3"></div>
                </div>
            </div>
        </div>
        <div class="nav-darken"></div>
        <div class="nav-mob">
            <ul>
            <li><a href="video.html">Nosotros</a></li>
                <li><a href="#">Contactanos</a></li>
                <li><a href="#">Ubicación</a></li>
            </ul>
        </div>

    <form action="" id="formlg">
        <div id="login-section">
            <div id="login-container">
                <h3 style="opacity:0.6;font-weight:lighter;text-align:center;margin:20px 0px 0px 0px;">Ingresa tu Número de Siniestro</h3>
                <hr class="style-one">
                <ul style="opacity:0.75;font-size:18px;font-weight:lighter;list-style:none;margin: 0px 5px 0px 5px;">
                    <li>1. Revisa el número único de siniestro en tu ticket</li>
                    <li>2. Escribelo en el espacio disponible</li>
                    <li>3. Ingresa y checa tu información</li>
                </ul>
                <p class="error-msg">No se encontro un registro con ese numero</p>
                <div class='login-input'>
                    <p id="input-p" class="input-icon"></p>
                    <input type="text" name="siniestro" id="number-s" placeholder="Número Siniestro" required>
                </div>
                <div class="alert">
                </div>
                <input type="submit"class="login-button" value="Ingresar"/>
            </div>
        </div>

    </form>
        <div class="footer">
            <div class="container" style="margin:40px 20px 40px 0px;">
                <div class="row" style="display:flex;">  
                    <div class="col-8" style="display:flex;justify-content:space-evenly">
                        <ul>
                            <li><h5>IntelAt</h5></li>
                            <li><a href="#">Acerca de</a></li>
                            <li><a href="#">Contactanos</a></li>
                            <li><a href="#">Cultura</a></li>
                            <li><a href="#">Proveedores</a></li>
                        </ul>
                        <ul>
                            <li><h5>Información</h5></li>
                            <li><a href="#">Preguntas Frecuentes</a></li>
                            <li><a href="#">Ubicación</a></li>
                            <li><a href="#">Ayuda</a></li>
                        </ul>
                        <ul>
                            <li><h5>Privacidad</h5></li>
                            <li><a href="#">Políticas de Privacidad</a></li>
                            <li><a href="#">Terminos de Uso</a></li>
                        </ul>
                    </div>
                    <div class="col-4" style="max-width:100%;">
                        <h5 style="text-align:center;color:#eeeeee;">Encuentranos en:</h5>
                        <div style="display:flex;justify-content:space-evenly">
                            <a href="#" class="twitter"></a>
                            <a href="#" class="facebook"></a>
                            <a href="#" class="youtube"></a>
                            <a href="#" class="linkedin"></a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col" style="display:flex;justify-content:center;">
                        <p><b>IntelAt</b>© 2019. Al utilizar nuestro sitio web, usted acepta nuestro descargo de responsabilidad y acepta sus términos.</p>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/app.js"></script>
        
        <script src="vendor/jquery-3.4.1.min.js"></script>
        <script src="js/login.js"></script>
        <script src="vendor/bootstrap-4.3.1-dist/js/bootstrap.js"></script>
    </body>
</html>