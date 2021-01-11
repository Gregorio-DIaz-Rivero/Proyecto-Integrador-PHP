<?php
include 'navbar.php';
require_once 'funciones.php';
require 'clases/Producto.php';

$titulo='Modificar Producto';
if (!isset($_SESSION)){
    session_start();
} elseif (!isset($_SESSION['usuario']))
{
    header('Location: login.php?direccion=productos-alta.php');
    die();
} else {

    if ($_SERVER['REQUEST_METHOD'] === 'GET') {
        global $producto_a_modificar, $nombre, $precio, $stock, $categoria, $marca, $garantia, $descripcion, $envio, $nombreerror, $precioerror, $stockerror, $categoriaerror, $marcaerror, $garantiaerror, $envioerror, $errores;
        $id_producto = $_GET['modificar'];
        $producto_a_modificar = new Producto();
        $producto_a_modificar->findById($id_producto);
        $nombre = $producto_a_modificar->nombre;
        $precio = $producto_a_modificar->precio;
        $stock = $producto_a_modificar->stock;
        $categoria = $producto_a_modificar->id_categoria;
        $marca = $producto_a_modificar->id_marca;
        $garantia = $producto_a_modificar->garantia;
        $envio = $producto_a_modificar->envio_sin_cargo;
        $descripcion = $producto_a_modificar->descripcion;
        $nombreerror = '';
        $precioerror = '';
        $stockerror = '';
        $categoriaerror = '';
        $marcaerror = '';
        $garantiaerror = '';
        $envioerror = '';
        $errores='';
    }
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        require 'validar.php';

        if ($errores !== '') {
            printAlert($errores, 'alert-danger');
        } else{
            $id_producto = $_POST['modificar'];
            $producto_a_modificar = new Producto();
            $producto_a_modificar->findById($id_producto);
            $producto_a_modificar->nombre=$nombre;
            $producto_a_modificar->precio=$precio;
            $producto_a_modificar->stock=$stock;
            $producto_a_modificar->id_categoria=$categoria;
            $producto_a_modificar->id_marca=$marca;
            $producto_a_modificar->garantia=$garantia;
            $producto_a_modificar->envio_sin_cargo=$envio;
            $producto_a_modificar->descripcion=$descripcion;
            $producto_a_modificar->update();
            header('Location: productos-listado.php');
        }
    }

    echo '<h1 id="titulo">' . $titulo . '</h1>';
    require 'formulario-modificar-producto.php';
}
include 'footer.php';
