<?php
include 'clases/Categoria.php';
include "navbar.php";
require_once 'funciones.php';

$titulo='Alta de productos';
if (!isset($_SESSION)){
    session_start();
} elseif (!isset($_SESSION['usuario']))
{
    header('Location: login.php?direccion=alta-categoria.php');
    die();
} else {
    global $errores, $nombre;
    $errores = '';
    $nombre = '';
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        require 'validar-categoria.php';
        if ($errores == '') {
            $categoria = new Categoria(['id' => null, 'nombre' => $nombre]);
            $categoria->insert();
            echo 'Se cargardo con exito la categoria';
        } else {
            printAlert($errores, 'alert-danger');
        }
    }
    require 'alta-categoria-formulario.php';
}
include 'footer.php';