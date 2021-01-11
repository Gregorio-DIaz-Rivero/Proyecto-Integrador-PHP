<?php
require 'clases/Categoria.php';
$elim=$_GET['eliminar'];
$categoria_a_eliminar=new Categoria();
$categoria_a_eliminar->findById($elim);
$categoria_a_eliminar->delete();
header('Location: categorias_listado.php');
