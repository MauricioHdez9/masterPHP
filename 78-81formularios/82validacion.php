<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>validar formulario PHP</title>
</head>
<body>
    <h1>validando un formulario PHP</h1>
    <form action="./82validarformulario.php" method="post">
        <label for="nombre">Nombre</label>
        <input type="text" name="nombre" id="" value="vacio" required="required"pattern="[A-za-z]+"></br>
        

        <label for="apellido">Apellido</label>
        <input type="text" name="apellido" id="" value="vacio" required="required"pattern="[A-za-z]+"></br>
        
        
        <label for="edad">Edad</label>
        <input type="text" name="edad" id="" value="vacio" required="required"pattern="[A-za-z]+"></br>
        

        <label for="email">Email</label>
        <input type="email" name="email" id="" value="vacio" required="required"></br>
        

        <label for="password">Contraseña</label>
        <input type="password" name="password" id="" value="vacio" required="required"></br>
        
        <input type="submit" value="Enviar">
    </form>
    //todos nos quedamos empezar en el video 83    
</body>
</html>