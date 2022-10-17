<?php 
$mi_pp_variable ="hola desde una variable ";
$numero=44;
$boleano='verdadero';
$numero=77;
echo ' <h1>'.$mi_pp_variable.'</h1> ';
echo  $numero.'<br>' ;
//----------------------------------------------------------------------------------------------------
// TIPOS DE DATOS
// entero int /integer =77
// coma /flotante /decimales =55.5
// cadenas /strings ='hopa '
// bolleanos ='true','false' 
// null=
// array=
// objetos= 
$numero=100;
$decimal=55.3;
$texcto='hola\n';
$verdadero=false;
$null=null;
echo gettype($verdadero);
//DEBUGER- variable -----------------------------------
$nombre='mauricio';
var_dump($nombre);
echo " \nlas comillas dobles dectetan el volor de variables $numero ";
//--------------constantes-----------------------------------------------------
define('nombre','mauricio');
echo ' se imprime sin el dolar(simbolo) por que es constante  '.nombre.'<br>';
//constantes predifenidas 
echo PHP_OS.'</br>';
//operasores aridmeticos
$suma=0;
$n1=5;
$n2=2; 
echo 'suma'.'= '.$n1+$n2.'</br>';
echo 'resta'.'= '.$n1-$n2.'</br>';
echo 'multoplicacion'.'= '.$n1*$n2.'</br>';
echo 'Modulo '.'= '.$n1%$n2.'</br>';
//operadores decremento y degremento 
$ayer=2018;
// incremento;
// $ayer= $ayer+1;
$ayer++;
// decremento;
// $ayer= $ayer-1;
$ayer--;
// preincremento;
// $ayer= 1+$ayer;
++$ayer;
// predecremento;
// $ayer= 1-$ayer;
--$ayer;
//---------------------------------operadores de asingnacion 
$edad =55;
echo $edad.'</br>';
echo ($edad+=5).'</br>';
echo ($edad-=5).'</br>';
echo ($edad*=5).'</br>';
echo ($edad/=5).'</br>';
echo ($edad%=5).'</br>';


?>
