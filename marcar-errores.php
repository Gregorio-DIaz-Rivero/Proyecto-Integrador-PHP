<script>
    var nombrejs=document.getElementById('nombre');
    var preciojs=document.getElementById('precio');
    var stockjs=document.getElementById('stock');
    var categoriajs=document.getElementById('categoria');
    var marcajs=document.getElementById('marca');
    var garantiajs6=document.getElementById('garantia6meses');
    var garantiajs12=document.getElementById('garantia12meses');
    var garantiajs24=document.getElementById('garantia24meses');
    var garantiajs36=document.getElementById('garantia36meses');
</script>
<?php if ($nombreerror=='yes') {
    ?>
    <script>nombrejs.style.backgroundColor='#ff0000'</script>
    <?php
}
if ($precioerror=='yes') {
    ?>
    <script>preciojs.style.backgroundColor='#ff0000'</script>
    <?php
}
if ($stockerror=='yes') {
    ?>
    <script>stockjs.style.backgroundColor='#ff0000'</script>
    <?php
}
if ($categoriaerror=='yes') {
    ?>
    <script>categoriajs.style.backgroundColor='#ff0000'</script>
    <?php
}
if ($marcaerror=='yes') {
    ?>
    <script>marcajs.style.backgroundColor='#ff0000'</script>
    <?php
}
if ($garantiaerror=='yes') {
    ?>
    <script>
        garantiajs6.style.backgroundColor='#ff0000';
        garantiajs12.style.backgroundColor='#ff0000';
        garantiajs24.style.backgroundColor='#ff0000';
        garantiajs36.style.backgroundColor='#ff0000';
    </script>
    <?php
}
