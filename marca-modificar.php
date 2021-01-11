<?php
include 'clases/Marca.php';
include "navbar.php";
require_once 'funciones.php';
if (!isset($_SESSION['usuario']))
{
    header('Location: login.php?direccion=alta-marca.php');
    die();
} else {
    global $errores, $nombre, $sitio_web, $telefono, $observaciones;
    $id_marca = $_GET['modificar'];
    $marca1= new Marca();
    $marca1->findById($id_marca);
    $errores = '';
    $nombre = $marca1->nombre;
    $sitio_web = $marca1->sitio_web;
    $telefono = $marca1->telefono;
    $observaciones = $marca1->observaciones;
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        require 'valida-marca.php';
        if ($errores=='') {
            $id_marca = $_POST['modificar'];
            $marca2= new Marca();
            $marca2->findById($id_marca);
            $marca2->nombre=$nombre;
            $marca2->sitio_web=$sitio_web;
            $marca2->telefono=$telefono;
            $marca2->observaciones=$observaciones;
            $marca2->update();
            header('Location: marcas_listado.php');
        }
        else {
            printAlert($errores, 'alert-danger');
        }
    }
    require 'marca_modificar_formulario.php';
}
include 'footer.php';