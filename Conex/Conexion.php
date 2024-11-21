<?php
$servidor="localhost";
$name = "root";
$password = "";
$BD="regis";

$conexion =new mysqli($servidor,$name,$password,$BD);
if($conexion->connect_error){
    die("Error en la conexión". $conexion->connect_error);
}

echo 'conexión exitosa';
?>