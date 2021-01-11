<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        td {
            border: saddlebrown 2px solid;
        }
    </style>
</head>
<body>
    <table style="border-collapse: collapse">
        <tr>
            <td>Nombre: </td>
            <?php echo '<td>' . ' ' . $nombre . '</td>'?>
        </tr>
        <tr>
            <td>Precio: </td>
            <?php echo '<td>' . ' ' . $precio . '</td>'?>
        </tr>
        <tr>
            <td>Stock: </td>
            <?php echo '<td>' . ' ' . $stock . '</td>'?>
        </tr>
        <tr>
            <td>Categoria: </td>
            <?php echo '<td>' . ' ' . $categoria . '</td>'?>
        </tr>
        <tr>
            <td>Marca: </td>
            <?php echo '<td>' . ' ' . $marca . '</td>'?>
        </tr>
        <tr>
            <td>Garantia: </td>
            <?php echo '<td>' . ' ' . $garantia . '</td>'?>
        </tr>
        <tr>
            <td>$envio: </td>
            <td> Si</td>
        </tr>
        <tr>
            <td>Descripción: </td>
            <?php echo '<td>' . ' ' . $descripcion . '</td>'?>
        </tr>
    </table>
</body>
</html>