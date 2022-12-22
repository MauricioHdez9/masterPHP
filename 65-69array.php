<?php 
$pelicula = "batman";
$peliculas = array('batman','pinguino','hoobit');
$cantantes = ['pepe','jose','carlos'];
//array asosiativo
$personas = array (
    'nombre'=> 'Mauricio',
    'apellido'=> 'hernandez',
    'web'=> 'google'

);
//array multi dimensional
$contactos =array(
    array('nombre'=> 'Mauricio',
    'apellido'=> 'hernandez'),
    array('nombre'=> 'Mauricio2',
    'apellido'=> 'hernandez22'),
    array('nombre'=> 'Mauricio223',
    'apellido'=> 'hernandez23') 
);
echo $contactos[2]['nombre']."prueba</br>";
foreach ($contactos as $key => $conctato) {

     var_dump($conctato['nombre']);
}
echo  $personas['nombre']."</br>";
// var_dump($peliculas[0])
//recorrer con for 
for ($i=0; $i <count($peliculas) ; $i++) 
{ 
    echo "$peliculas[$i]"."</br>";
}
//recorrer con forech 
foreach ($cantantes as $cantante ) {
    echo " $cantante  "."</br>";
}
//funciones de  array 
asort($cantantes);
var_dump($cantantes);
//añadir elementos  a array
$cantantes[] = "natos";
array_push($cantantes,"lolo");
//eliminar  elementos 
array_pop($cantantes);
unset($cantantes[2]);
//aleatorio
$indice =array_rand($cantantes);
echo $cantantes[$indice];
//dar la vuelta 
array_reverse($cantantes);
//buscar
array_search('objetobuscado',$cantantes);
//contar
//count($cantantes);
sizeof($cantantes);
//ordenar 
//https://www.php.net/manual/es/array.sorting.php
asort($cantante) ;//ordena por valor m a M
arsort($cantante);//ordena por valor M a m

?>
