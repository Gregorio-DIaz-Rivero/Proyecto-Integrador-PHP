<?php include "navbar.php";
require 'control-de-errores-de-conexion.php';
$titulo='Listado de marcas';
if (!isset($_SESSION)){
    session_start();
} elseif (!isset($_SESSION['usuario']))
{
    header('Location: login.php?direccion=marcas_listado.php');
    die();
} else {
    echo '<h1>' . $titulo . '</h1>';
    $numero_de_fila = 1;
    require 'conexion.php';
    $conexion = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);
    if ($conexion) {
        mysqli_set_charset($conexion, DB_DATABASE);
        $rs = mysqli_query($conexion, 'SELECT * FROM  marcas');
        mysqli_close($conexion);
        echo '<table class="table">';
        echo '<caption>Lista de marcas</caption>';
        echo '<th scope="col">id marca</th>';
        echo '<th  scope="col"> nombre </th>';
        echo '<th scope="col"> sitio web </th>';
        echo '<th scope="col">telefono</th>';
        echo '<th scope="col">observaciones</th>';
        echo '<th scope="col">Modificar</th>';
        echo '<th scope="col">Eliminar</th>';
        while ($fila = mysqli_fetch_assoc($rs)) {
            echo '<tr>';
            $idmarca=$fila['id_marca'];
            foreach ($fila as $partes) {
                if ($fila['sitio_web'] == $partes) {
                    echo '<td>' . '<a href="' . 'https://' . $partes . '" target="_blank">' . $partes . '</a>' . '</td>';

                } else {
                    echo '<td>' . $partes . '</td>';
                }
            }
            echo '<td><a href="marca-modificar.php?modificar=' . $idmarca . '">Modificar</a></td>';
            echo '<td><a href="marca-eliminar.php?eliminar=' . $idmarca . '">Elimninar</a></td>';

            echo '</tr>';
        }
        echo '</table>';
    } else {
        header('Location: pagina_error.php');
    }
}
include 'footer.php';