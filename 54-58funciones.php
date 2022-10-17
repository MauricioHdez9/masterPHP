<?php
//function nombredefucion() 
{
    //bloque de la funcion 
}
function muetranombres()
{
    echo " victor ";
    echo " robles  ";
    echo " mau";
    echo " iran ";

} 
function tabla($numero)
{
    for ($i=0; $i <=10 ; $i++) 
    { 
        echo "$numero X $i =  ".($numero*$i)."</br>";
    }
}
function calculadora($num1,$num2,$negrita=false)
{ 
    $suma=$num1+$num2;
    $resta=$num1-$num2;
    $mult=$num1*$num2;
    $div=$num1/$num2;
    $cadenatexto="";
    $cadenatexto.= " suma: $suma "."</br>";
    $cadenatexto.= " resta : $resta "."</br>";
    $cadenatexto.= " multiplicacion: $mult "."</br>";
    $cadenatexto.= " divicion: $div "."</br>";
    
    //55 funcion con varios parametros 
    //56 duncion con parametros opcionales
    //
    return $cadenatexto; 

}
function retornanombre($nombre)
{
    //58 funciones dentro de otras
    return "el nombre es $nombre";
}
muetranombres();
tabla(55);
echo calculadora(10,12);
echo retornanombre("mau");
?>
