<?php

session_start();
include '../Conex/Conexion.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $user = $_POST['usuario'];
    $pass = $_POST['password'];
    
    $sql = "SELECT * FROM registro WHERE CorreoElectronico='$user'";
    $result = $conexion->query($sql);
 
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        if (password_verify($pass, $row['Contraseña'])) {
            $_SESSION['usuario_id'] = $row['Id'];
            $_SESSION['nombre_usuario'] = $row['CorreoElectronico'];
            echo "Inicio de sesión exitoso. Bienvenido " . $row['Nombres'];
        } else {
            echo "Nombre de usuario o contraseña incorrectos.";
        }
    } else {
        echo "Nombre de usuario o contraseña incorrectos.";
    }
}
$conexion->close();
?>

