 var arreglodecategoria=document.getElementById('categoria');
var arreglo_de_los_valores_de_categoria=arreglodecategoria.getElementsByTagName('option');
var valor=document.createElement("input");
valor=document.createElement("input");
valor.type="hidden";
 valor.name='tamanocategoria';
 valor.id='tamanocategoria';
 valor.value= arreglo_de_los_valores_de_categoria.length;
 insertar=document.getElementById('padre');
 insertar.appendChild(valor);
 var iterar=0;
 var insertar
 for (iterar=0; iterar<arreglo_de_los_valores_de_categoria.length; iterar++) {
     valor=document.createElement("input");
     valor.type="hidden";
     valor.name='categoria' + iterar;
     valor.id='categoria' + iterar;
     valor.value=iterar;
     insertar=document.getElementById('padre');
     insertar.appendChild(valor);
    }

 var arreglodecategoria=document.getElementById('marca');
 var arreglo_de_los_valores_de_categoria=arreglodecategoria.getElementsByTagName('option');
 var valor=document.createElement("input");
 valor=document.createElement("input");
 valor.type="hidden";
 valor.name='tamanomarca';
 valor.id='categoria' + arreglo_de_los_valores_de_categoria.value;
 valor.value= arreglo_de_los_valores_de_categoria.length;
 insertar=document.getElementById('padre');
 insertar.appendChild(valor);
 iterar=0;
 for (iterar=0; iterar<arreglo_de_los_valores_de_categoria.length; iterar++) {
     valor=document.createElement("input");
     valor.type="hidden";
     valor.name='marca' + iterar;
     valor.id='marca' + iterar;
     valor.value=iterar;
     insertar=document.getElementById('padre');
     insertar.appendChild(valor);
 }
