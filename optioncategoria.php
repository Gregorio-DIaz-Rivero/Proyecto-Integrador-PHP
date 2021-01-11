<?php
function optioncategoria()
{
    require 'conexion.php';
    $conexion = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);
    if ($conexion) {
        mysqli_set_charset($conexion, DB_DATABASE);
        $rs = mysqli_query($conexion, 'SELECT * FROM  productos');
        mysqli_close($conexion);
        $cantidad = 1;
        echo '<option value="" >Selecconae una categoria</option>';
        while ($fila = mysqli_fetch_assoc($rs)) {
            echo '<option value="' . $cantidad . '" >' . $fila['nombre'] . '</option>';
            $cantidad++;
        }
    }
    else {
        die('No pudimos encontrar las marcas');
    }
}