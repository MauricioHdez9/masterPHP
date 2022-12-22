<?php 
if (($_COOKIE['migalleta'])) {
    unset($_COOKIE['migalleta']);
    setcookie('migalleta','',time()-1000);
}
header('Location:ver_cookies.php');
?>