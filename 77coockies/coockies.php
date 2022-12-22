<?php 
// setcookie("nombre","valor que solo puede ser texto",caducidad,ruta,diminio);
//cookies basica
setcookie("migalleta","valor de mi galleta");
//cookies con expiracion
setcookie( "unanio","valor de 365 dias ",time()+(60*60*24*365));
?>
<a href="ver_cookies.php">verlas Galletas </a>
