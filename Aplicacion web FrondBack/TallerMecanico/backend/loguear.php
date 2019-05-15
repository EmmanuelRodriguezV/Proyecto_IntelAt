<?php

require 'conexion.php';
$alert='';

session_start();
if(!empty($_SESSION['active'])){
    header("location: ../frontend/details.php");
}else{


if(!empty($_POST)){
    if(empty($_POST['siniestro'])){
  

        $alert ='Ingrese su numero de siniestro'; 
        header("location: ../frontend/index.php");
      
}
else{
    
    $siniestro=$_POST['siniestro'];

    $query=mysqli_query($conexion,"SELECT * FROM clientes WHERE NUM_SINIESTRO='$siniestro' ");
    $results=mysqli_num_rows($query);

    if($results>0){
        $data=mysqli_fetch_array($query);

        //INICAMOS LA SESSION
       
        $_SESSION['active']=true;
        $_SESSION['siniestro']=$data['NUM_SINIESTRO'];
        $_SESSION['serie']=$data['NUM_SERIE'];
        $_SESSION['nombre']=$data['DUENO_NOMBRE'];
        $_SESSION['disponible']=$data['DISPONIBLE'];
        $_SESSION['estado']=$data['ESTADO_AVANCE'];

        header("location: ../frontend/details.php");
        

    }
    else{
        $alert ='El usuario o la clave son incorrectas';
        session_destroy();
        header("location: ../frontend/index.php");
    }

        }
    }
}

/*
$siniestro=$_POST['siniestro'];

$query=$mysqli -> query("SELECT * FROM clientes WHERE NUM_SINIESTRO='$siniestro' ");


if($query->num_rows==1):
    $datos=$query->FETCH_ASSOC();
    echo json_encode(array('error'=>false,'tipo'=>$datos['NUM_SINIESTRO']));
else:
    echo json_encode(array('error'=>true));
endif;
$mysqli->close();




/*
require 'conexion.php';
$alert='';
if(!empty($_POST)){
    if(empty($_POST['siniestro'])){
  

        $alert ='Ingrese su numero de siniestro'; 
        header("location: ../frontend/index.php");
      
}
else{
    
    $siniestro=$_POST['siniestro'];

    $query=mysqli_query($conexion,"SELECT * FROM clientes WHERE NUM_SINIESTRO='$siniestro' ");
    $results=mysqli_num_rows($query);

    if($results>0){
        $data=mysqli_fetch_array($query);

        //INICAMOS LA SESSION
        session_start();
        $_SESSION['active']=true;
        $_SESSION['siniestro']=$data['NUM_SINIESTRO'];
        $_SESSION['serie']=$data['NUM_SERIE'];
        $_SESSION['nombre']=$data['DUEÑO_NOMBRE'];
        $_SESSION['disponible']=$data['DISPONIBLE'];
        $_SESSION['estado']=$data['ESTADO_AVANCE'];

        header("location: ../frontend/details.php");
        

    }
    else{
        $alert ='El usuario o la clave son incorrectas';
        session_destroy();
        header("location: ../frontend/index.php");
    }

}

}
*/
    /*
    $records=$conexion->prepare(' SELECT NUM_SINIESTRO FROM clientes WHERE NUM_SINIESTRO=:siniestro ');
    $records->bindParam(':siniestro',$_POST['siniestro']);
    $records->execute();
    $results=$records->fetch(PDO::FETCH_ASSOC);

    $message='';

    if(count($results)>0 ){
        echo "todo bien";
    }
    else{
        echo "TODO MAL";
    }
}

*/

/*
$q="SELECT COUNT(*) as contar FROM clientes WHERE NUM_SINIESTRO='$siniestro' ";

$consulta=mysqli_query($conexion,$q);

$array=mysqli_fetch_array($consulta);

if($array['contar']>0){
    header("location: ../frontend/details.php");
}else{
    echo "Datos incorrectos";
}
*/
?>