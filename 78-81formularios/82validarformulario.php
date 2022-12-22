<?php
$error = true;
if(isset($_POST['nombre']))
{
$nom = $_POST['nombre'];
$app = $_POST['apellido'];
$adad = $_POST['edad'];
$em = $_POST['email'];
$ps = $_POST['password'];

} 
else
{
    echo " no se encontraron los datos  ";
    $error ='faltan valores';
    header("Location:index.php?error=");
    
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <!--todos nos quedamos en el 83  -->
    //todos nos quedamos empezar en el video 83
</body>
</html>