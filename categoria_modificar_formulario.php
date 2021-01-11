<?php
?>
<form action="" method="post">
    <input type="hidden" name="modificar" value="<?= $id_categoria ?>">
    <div class="form-row">
        <label for="name">Nombre de la categoria: </label>
        <input type="text" name="name" id="name" value="<?= $nombre ?>">
    </div>
    <div class="form-row">
        <div class="form-group col-md-1"></div>
        <div class="form-group col-md-6">
            <button type="submit" class="btn btn-primary">Enviar</button>
            <a href="categorias_listado.php" type="reset" class="btn btn-primary">Cancelar</a>
        </div>
    </div>
</form>
