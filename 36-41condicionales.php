<?php
//----OPERADORES DE COMPARACION----------------------------------------------------------------------------- 
//==  igual
//=== identico
// != diferente
// <> diferente 
// !== no identico
// < mayor que 
// <= mayor que  o igual que 
// > menor que 
// >= menor que o igual  que 
//--------OPERADORESLOGICOS--------------------------------------------------------------------------------------------
// && AND
// || OR
// !  NOT
//--EJEMPLO1---------------------------------------------------
$color ="verde";
if ($color=="rojo") 
{
    echo '  es rojo';
    # code...
}
else 
{
    echo "no es rojo".'</br>';
    ;
}
//--EJEMPLO2---------------------------------------------------
$year=2019;
if ($year<2019) {
    echo ' esto es menor  ';
}
else 
{
    echo " esto es mayor  ";
}
//--EJEMPLO3---------------------------------------------------
$edad=42;
$mayor=18;
$nombre='mau';
$ciudad='neza';
if ($edad>=$mayor)
{
    echo "eres un adulto ";
    if ($ciudad)
    {
        echo ' viencenido hermano ';

    }
    else 
    {
        echo 'ten cuidado ';
    }
}
else 
{
    echo "no eres adulto";
}
//--EJEMPLO4---------------------------------------------------
//else if
$dia =3 ;
if ($dia  ==1)
{
    echo ' lunes ';
    
}
else{
    if($dia==2)
    {
        echo "martes";
    }
}
if ($dia  ==1)
{
    echo ' lunes ';
    
}
elseif($dia==2)
{
  echo "es martes " ;
}
elseif($dia==3)
{
    echo "es miercoles" ;
  }
  //--EJEMPLO5---------------------------------------------------
  $edad1=18;
  $edad2=68;
  $ed=20;
  if ($ed>=$edad1 &&  $ed<=$edad2)
  {
    echo ' puedestrabajar';
  }
  //--EJEMPLO6- de OR || --------------------------------------------------

  //--EJEMPLO6- switch --------------------------------------------------
switch($dia)
{
    case 1:
        echo ' lunes  ';
        break;
    case 2:
        echo ' martes  ';
        break;
    case 3:
        echo ' miercoles  ';
        break;
    case 4:
        echo ' jueves   ';
        break;
    case 5:
        echo ' viernes ';
        break;
        case 6:
            echo ' sabado  ';
            break;
            default:
            echo ' descanso  ';
            break;
            

}
//--GOTO--------------------------------------------------------------------------------------------------------------
goto marca;
echo " intriccion 1";    
echo " intriccion 2";    
echo " intriccion 3";    
echo " intriccion 4"; 
marca:
echo "me e saltado intrucciones yupi"   

?>