<?php
//------------------------------ejercicio 2--------------------------------------------------------------------------------
// $numero=0;
// for ($i=0; $i <100 ; $i++) { 
//     if($i %2 == 0)
//     {
//         echo " los numeros son  $i".'</br>';

//     }
// }
//------------------------------ejercicio 3--------------------------------------------------------------------------------
// $i=0;
// while($i<40)
// {
//     echo ($i*$i)."</br>";
//     $i++;
// }

//------------------------------ejercicio 4--------------------------------------------------------------------------------
// $num1= $_GET['num1'];
// $num2= $_GET['num2'];
// echo "el valor de la operacion es ".($num1+$num2)."</br>";
// echo "el valor de la operacion es ".($num1-$num2)."</br>";
// echo "el valor de la operacion es ".($num1*$num2)."</br>";
// echo "el valor de la operacion es ".($num1/$num2)."</br>";
// echo "el valor de la operacion es ".($num1%$num2)."</br>";
//------------------------------ejercicio 5--------------------------------------------------------------------------------
// $num1 = $_GET['num1'];
// $num2 = $_GET['num2'];
// if ($num1 < $num2) {
//     while ($num1 <= $num2) {
//         echo "el valor es de  " . ($num1). "</br>"
//         ;
//         $num1++;
//     }
// } else {
//     while ($num1 >= $num2) {
//         echo "el valor es de  " . ($num1). "</br>"
//         ;
//         $num1--;
//     }
// }
//------------------------------ejercicio 6--------------------------------------------------------------------------------
// if(isset ($_GET['num1']))
// {
//     $num1 = $_GET['num1'];
// echo "<table border='1'>";
// echo "<tr>";
// for ($c=1; $c <=10 ; $c++) 
// { 
//     echo "<td> tabla del $c</td>"; 
// }
// echo "</tr>";
// echo "<tr>";
// for ($i=1; $i <=10 ; $i++) 
// {
   
//     echo "<td>";
//     for ($x=1; $x<=10 ; $x++) 
//     { 
//         echo " $i X $x = ".($i*$x)."</br>";
//     }
//     echo "</td>"; 
    
// }
// echo "</tr>";


// echo"</table>";
    
// }
//------------------------------ejercicio 7--------------------------------------------------------------------------------
$num1 = $_GET['num1'];
$num2 = $_GET['num2'];
if ($num1 < $num2) {
    while ($num1 <= $num2) {
        if($num1%2==0)
        {
            echo "el valor es de  " . ($num1). "</br>";
        

        }
        $num1++;
    }
} else {
    while ($num1 >= $num2) {
        
        if($num1%2==0)
        {
            echo "el valor es de  " . ($num1). "</br>";
        

        }
        $num1--;
    }
}