
<?php
    session_start();
    $varsesion= $_SESSION['nombre'];
    $siniestro=$_SESSION['siniestro'];
    $estado=$_SESSION['estado'];
    if($varsesion==null||$varsesion=''){
        echo 'usted no esta autorizado';
        header("location: index.php");
      print_r($estado);
    }
    require '../Backend/conexion.php';
    $query=mysqli_query($conexion,"SELECT * FROM partes WHERE ID_SINIESTRO='$siniestro' ");
   
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="vendor/bootstrap-4.3.1-dist/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/details_style.css">
        <link rel="icon" href="media/images/logoBlanco.png">
        <title>Detalles</title>
    </head>
    <body>
        <div id="nav-bar">
            <div class="logo">
                <a href="details.php">
                    <img src="media/images/CargaOP1.gif">
                    <h3>IntelAt</h3>
                </a>
            </div>
            <div class="content">
                <ul class="nav-links">
                    <li><a href="video.html">Nosotros</a></li>
                    <li><a href="#"> <?php echo $_SESSION['nombre'] ?> </a></li>
                    <li><a href="../backend/salir.php">SALIR</a></li>
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
                <li><a href="#">Nosotros</a></li>
                <li><a href="#"></a></li>
                <li><a href="../backend/salir.php">SALIR</a></li>
            </ul>
        </div>
        <div id="second-section">
            <div id="container">
                <h1 style="opacity:0.6;font-weight:lighter;">Progreso</h1>
                <hr class="style-one">
                <div id="pb-div">
                    <ul id="progressbar">
                        <li class="active">Recibido</li>
                        <li>Diagnostico</li>
                        <li>Reparación</li>
                        <li>Listo para recoger</li>
                    </ul>
                </div>

                <h2 style="opacity:0.6;margin-top:20px;font-weight:lighter;">Fotos</h2>
                <hr class="style-two" style="margin-bottom:50px;">
                <div id="carousel" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel" data-slide-to="1"></li>
                        <li data-target="#carousel" data-slide-to="2"></li>
                        <li data-target="#carousel" data-slide-to="3"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="media/images/background-2.jpg" alt="First slide" data-holdered-rendered="true">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="media/images/background-3.jpg" alt="Second slide" data-holdered-rendered="true">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="media/images/background-4.jpg" alt="Third slide" data-holdered-rendered="true">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="media/images/background-5.jpg" alt="Third slide" data-holdered-rendered="true">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                
                <h2 style="opacity:0.6;margin-top:40px;font-weight:lighter;">Pedidos</h2>
                <hr class="style-two">
                <div class="table-responsive" style="margin:30px 0px 50px 0px;font-family:'Roboto',sans-serif;font-weight: lighter;">
                
                    <table class="table table-hover"id='contenido'>
                        <thead class="thead" style="background-color:#393e46;color:#fff;">
                            <tr>
                                <th style="width:calc(100%/3);">PIEZA</th>
                                <th style="width:calc(100%/3);">COSTO</th>
                                <th style="width:calc(100%/3);">FECHA</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                 while($extraido=mysqli_fetch_array($query)){
                                    echo '<tr>';
                                    echo '<td>'.$extraido['PIEZA'].'</td>';
                                    echo '<td>'.$extraido['PRECIO'].'</td>';
                                    echo '<td>'.$extraido['FECHA'].'</td>';                         
                                    echo '</tr>';
                                 }                            
                            
                            ?>
                        </tbody>
                    </table>
                </div>
               
            </div>
        </div>
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
        <script src="js/details.js"></script>
        <script src="vendor/jquery-3.4.1.min.js"></script>
        <script src="vendor/bootstrap-4.3.1-dist/js/bootstrap.js"></script>



    <script>

       const progress = () => {
        var con = "<?php echo $_SESSION['estado']; ?>";
     //  var index = 0;
        var index;
        
        for(index=2;index<=con;index++){
           
            
             var progressbar = document.querySelector(`#progressbar li:nth-child(${index})`)
            
             progressbar.classList.toggle('active')
           
     }
}
     progress();
    
    </script>
    </body>
</html>