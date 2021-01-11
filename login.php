<?php include 'navbar.php';
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $direccion=$_GET['direccion'];
}
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        require 'conexion.php';
        $conexion = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);
        if ($conexion) {
            $direccion=$_POST['direccion'];
            $usuario=$_POST['name'];
            $contrasenia=$_POST['password'];
            $sql=<<<SQL_AREA
                SELECT * FROM usuarios WHERE usuario='$usuario' AND contraseña='$contrasenia'
SQL_AREA;
            $rs=mysqli_query($conexion,$sql);
            if (mysqli_num_rows($rs)==1) {
                session_start();
                $_SESSION['usuario']=$usuario;
                header("Location: $direccion");
            }
            else {
                echo 'No se encontro al usuario';
            }
        } else {
            header('Location: pagina_error.php');
        }
    }
    echo '<h1>Inicie Sesion para continuar</h1>';
    ?>
<form action="" method="post">
    <div class="form-row">
        <label for="name">Usuario</label>
        <input type="text" id="name" name="name" autofocus>
    </div>
    <div class="form-row">
        <label for="password"">Password</label>
        <input type="password" id="password" name="password">
    </div>
    <input type="hidden" value="<?= $direccion?>" name="direccion">
    <input type="submit" name="enviar" id="enviar" value="enviar">
</form>
<?php
    include 'footer.php';