
<?php include "navbar.php";
    $titulo=isset($_GET['titulo'])?$_GET['titulo']:'Home';
echo '<h1>' . $titulo . '</h1>';
include 'footer.php';