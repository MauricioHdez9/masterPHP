<?php 
if(isset($_COOKIE['migalleta']))
{
    echo "<h1>".$_COOKIE['migalleta']."</h1>"."</br>";
}
else
{echo " no existe la coockie "."</br>";}
if(isset($_COOKIE['unanio']))
{
    echo "<h1>".$_COOKIE['unanio']."</h1>"."</br>";
}
else
{echo " no existe la coockie 2 "."</br>";}
?>
<a href="./borrar_coockies.php">Borrar</a>
