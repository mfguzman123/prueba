<?php
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE');
include '../Conex/Conexion.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $primer_nombre = $_POST['primer_nombre'];
    $segundo_nombre = $_POST['segundo_nombre'];
    $primer_apellido = $_POST['primer_apellido'];
    $segundo_apellido = $_POST['segundo_apellido'];
    $identificacion = $_POST['identificacion'];
    $telefono = $_POST['telefono'];
    $email = $_POST['email'];
    $fc_contratacion = $_POST['fc_contratacion'];
    $usuariocontrasena = password_hash($_POST['usuariocontrasena'], PASSWORD_DEFAULT);

    // Validar si el correo electrónico ya está registrado
    $validar_usuario = "SELECT * FROM sregistro WHERE email = '$email'";
    $q_validar_usuario = mysqli_query($conexion, $validar_usuario);
    $numr_validar_usuario = mysqli_num_rows($q_validar_usuario);

    if ($numr_validar_usuario > 0) {
        echo 'El correo electrónico ya se encuentra en uso.';
    } else {
        // Preparar y ejecutar la consulta de inserción
        $sql = "INSERT INTO sregistro ( primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, identificacion, telefono, email, fc_contratacion, usuariocontrasena) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        $stmt = $conexion->prepare($sql);
        $stmt->bind_param("sssssssss", $primer_nombre, $segundo_nombre, $primer_apellido, $segundo_apellido, $identificacion, $telefono, $email, $fc_contratacion, $usuariocontrasena);

        if ($stmt->execute()) {
            echo "Registro exitoso";
        } else {
            echo "Error: " . $stmt->error;
        }
        $stmt->close();
    }
}
?>
