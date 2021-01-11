<?php include "navbar.php";
require 'control-de-errores-de-conexion.php';
$titulo='Listado de marcas';
if (!isset($_SESSION)){
    session_start();
} elseif (!isset($_SESSION['usuario']))
{
    header('Location: login.php?direccion=categorias_listado.php');
    die();
} else {
    echo '<h1>' . $titulo . '</h1>';
    $numero_de_fila = 1;
    require 'conexion.php';
    $conexion = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);
    if ($conexion) {
        mysqli_set_charset($conexion, DB_DATABASE);
        $rs = mysqli_query($conexion, 'SELECT * FROM  categorias');
        mysqli_close($conexion);
        echo '<table class="table">';
        echo '<caption>Lista de categorias</caption>';
        echo '<th  scope="col"> Id_categoria </th>';
        echo '<th  scope="col"> nombre </th>';
        echo '<th scope="col">Modificar</th>';
        echo '<th scope="col">Eliminar</th>';
        while ($fila = mysqli_fetch_assoc($rs)) {
            echo '<tr>';
            $idcategoria = $fila['id_categoria'];
            foreach ($fila as $partes) {
                echo '<td>' . $partes . '</td>';
            }
            echo '<td><a href=categoria-modificar.php?modificar=' . $idcategoria . '">Modifcar</a></td>';
            echo '<td><a href="categoria-eliminar.php?eliminar=' . $idcategoria . '">Eliminar</a></td>';
            echo '</tr>';
        }
        echo '</table>';
    } else {
        header('Location: pagina_error.php');
    }
}
include 'footer.php';