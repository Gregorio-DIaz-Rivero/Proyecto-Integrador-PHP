<?php
//$error=null;
function error_de_conexion($db_host,$db_user,$db_password,$db_database) {
    $link=mysqli_connect($db_host,$db_user,$db_password,$db_database);
    $error=mysqli_connect_error();
    if (!$link) {
        header('Location: pagina_error.php');
    }
    return 1;

}
