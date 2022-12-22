<?php
$num1=1;
$frase='         la vida es bella   ';
//debuggear
var_dump($num1);//muestra la informacion de la variable 
gettype($num1);//dice de que tipo es la variable 
echo "</br>";
//fechas 
echo date('d-m-Y');
echo "</br>";
echo time();
echo "</br>";
//matematicas 
echo "la raiz cuadrada  ".sqrt(10);
echo "</br>";
echo "numeros aleatorios entre   ".rand(10,40);
echo "</br>";
echo " numero ".pi();
echo " redondiar".round(7.85);
echo "</br>";
//conparaciones 
is_string($num1);//compara si es un string
is_float($num1);//compara si la variable es un float 
isset($num1); // verifica si la variable existe 
trim($frase);// elimina espacios de la cadena  o variable 
empty($frase);//comprovar si la variable de texto esta vacia 
strlen($frase);//contar caracteres de una cadena
strpos($frase,"la vida");//encontrar un caracter
str_replace("visa","moto",$frase);//remplasar palbras en una cadena  
strtolower($frase);// convierte las carateres en 
strtoupper($frase);// convierte las carateres en 
unset($num1);//eliminar variable 
?>
