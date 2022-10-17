<?php 
//variables globales fuera de una funcion y se pueden usar don de quieras 
//variables locales

$x= "hola mundo";
 function holamundo()
 {
    global $x; // se tiene que especificar  que es una variable global 
    $year=2019; //local y solo se puede usar en la funcion 
    return $year;
 } 
//funciones variables-----------------------------------------------------------------------------------------------------------
function holamundo1()
{
 return "holamundo por una funcion variable1 ";
}
function holamundo2()
{
 return "holamundo por una funcion variable 2";    
}
function holamundo3()
{
 return "holamundo por una funcion variable 3";    
}
 $variableefuncion ="mundo3";
//  $variableefuncion ="holamundo3";
//  echo $variableefuncion();
 $concatenacion= "hola".$variableefuncion;
echo $concatenacion();
?>
