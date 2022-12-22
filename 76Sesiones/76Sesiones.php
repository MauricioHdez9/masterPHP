<?php
session_start() ;
//variable local
$variable_normal="soy una cadena de texto";
// variable de sesion
$_SESSION['variablepersistente']="hola soy una sesion activa";
echo $variable_normal."</br>";
echo$_SESSION['variablepersistente'];
?>
