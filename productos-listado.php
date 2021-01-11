<?php require 'navbar.php';
if (!isset($_SESSION)){
    session_start();
} elseif (!isset($_SESSION['usuario']))
{
    header('Location: login.php?direccion=productos-listado.php');
    die();
} else {
    $titulo ='Lista de productos';
    echo '<h1>' . $titulo . '</h1>';
    require 'conexion.php';
    $conexion = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);
    if ($conexion) {
        mysqli_set_charset($conexion, DB_CHARSET);
        $rs = mysqli_query($conexion, 'SELECT * FROM  productos');
        mysqli_close($conexion);
        echo '<table class="table">';
        echo '<caption>Lista de productos</caption>';
        echo '<th scope="col">Id producto</th>';
        echo '<th  scope="col"> Nombre </th>';
        echo '<th scope="col"> Precio </th>';
        echo '<th scope="col"> Stock </th>';
        echo '<th scope="col"> Id categoria </th>';
        echo '<th scope="col"> Id marca </th>';
        echo '<th scope="col">Garantia</th>';
        echo '<th scope="col">Envio sin cargo</th>';
        echo '<th scope="col">Nombre de foto</th>';
        echo '<th scope="col">Fecha de alta</th>';
        echo '<th scope="col">Descripcion</th>';
        echo '<th scope="col">Observaciones</th>';
        echo '<th scope="col">Modificar</th>';
        echo '<th scope="col">Eliminar</th>';
        while ($fila = mysqli_fetch_assoc($rs)) {
            echo '<tr>';
            $idproducto = $fila['id_producto'];
            foreach ($fila as $partes) {
                echo '<td>' . $partes . '</td>';
            }
            echo '<td><a href=modificar-producto.php?modificar=' . $idproducto . '">Modifcar</a></td>';
            echo '<td><a href="productos-eliminar.php?eliminar=' . $idproducto . '">Eliminar</a></td>';
            echo '</tr>';
        }
        echo '</table>';
    } else {
        header('Location: pagina_error.php');
    }
}
include 'footer.php';

