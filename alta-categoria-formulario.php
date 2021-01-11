<?php
$titulo='Alta de Categoria';
echo '<h1>' . $titulo . '</h1>'
?>

<form action="" method="post">
    <div class="form-row">
        <label for="name">Nombre de la categoria: </label>
        <input type="text" name="name" id="name">
    </div>
    <div class="form-row">
        <div class="form-group col-md-1"></div>
        <div class="form-group col-md-6">
            <button type="submit" class="btn btn-primary">Enviar</button>
            <button type="reset" class="btn btn-primary">Resetear</button>
        </div>
    </div>
</form>
