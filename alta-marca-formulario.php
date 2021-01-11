<?php
$titulo='Alta de marcas';
echo '<h1>' . $titulo . '</h1>'
?>

<form action="" method="post">
    <div class="form-row">
        <div class="form-group col-md-4">
            <label for="nombre">Nombre</label>
            <input type="text" class="form-control" id="nombre" name="nombre" value="<?=$nombre ?>">
        </div>
        <div class="form-group col-md-4">
            <label for="web">Sitio web:</label>
            <input type="text" class="form-control" id="web" name="web" value="<?=$sitio_web ?>">
        </div>
        <div class="form-group col-md-4">
            <label for="telefono">Telefono:</label>
            <input type="number" class="form-control" id="telefono" name="telefono" value="<?=$telefono?>">
        </div>
    </div>
    <div class="form-row">
        <textarea name="observaciones" id="observaciones" placeholder="Observaciones"><?=$observaciones?></textarea>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <button type="submit" class="btn btn-primary">Enviar</button>
            <button type="reset" class="btn btn-primary">Resetear</button>
        </div>
    </div>
</form>
