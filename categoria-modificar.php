<?php
include 'clases/Categoria.php';
include "navbar.php";
require_once 'funciones.php';

$titulo='Modificar productos';
if (!isset($_SESSION)){
    session_start();
} elseif (!isset($_SESSION['usuario']))
{
    header('Location: login.php?direccion=alta-categoria.php');
    die();
} else {
    if ($_SERVER['REQUEST_METHOD'] === 'GET') {
        global $id_categoria, $errores, $nombre;
        $id_categoria = $_GET['modificar'];
        $categoria1 = new Categoria();
        $categoria1->findById($id_categoria);
        $nombre = $categoria1->nombre;
        $errores = '';
    }
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        require 'validar-categoria.php';
        if ($errores == '') {
            $id_categoria = $_POST['modificar'];
            $categoria2 = new Categoria();
            $categoria2->findById($id_categoria);
            $categoria2->nombre=$nombre;
            $categoria2->update();
            header('Location: categorias_listado.php');
        } else {
            printAlert($errores, 'alert-danger');
        }
    }
    echo '<h1>' . $titulo . '</h1>';
    require 'categoria_modificar_formulario.php';
}
include 'footer.php';