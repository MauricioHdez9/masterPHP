<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>formularios </title>
    <form action="" method="POST" enctype="multipart/form-data">
        <label for="nombre">nombre</label>
        <p><input type="text"name="nombre "></p>
        <label for="apellido">apellido</label>
        <p><input type="text"name="apellido "></p>
        <input type="submit" value="Enviar"> 
        //----atributos inpunt----------------------------------------------------------------------
        maxlength ="5" </br>               //? maxiomo de caracteres en el campo 
        minlength ="5" </br>               //? minimo de caracteres en el campo 
        pattern ="[A-Z+]"  </br>           //? tododos los caracteres que acepta 
        required="required"</br>           //? campo necesario
        placeholder="ingresa nombre" </br> //? valor por defecto 
        //--- diferencia de campos en el input ---------------------------------------------------------------------------------------
        </br>
        <label for="button">nombre</label>
        <p>
            <input type="button"name="nombre "value="enviar ">
        </p>
        <label for="sexo">SEXO</label>
        <p>
            <input type="checkbox"name="sexo" value="M">
            <input type="checkbox"name="sexo" value="M">
        </p>
        <label for="color">COLOR</label>
        <p><input type="color"name="nombre "></p>

        <label for="fecha">FECHA</label>
        <p><input type="date"name="nombre "></p>

        <label for="archivo" multiple="multiple">ARCHIVO/S</label>
        <p><input type="file"name="nombre "></p>

        <label for="correo">CORREO</label>
        <p><input type="email"name="nombre "></p>

        <label for="numeor">NUMERO</label>
        <p><input type="number"name="nombre "></p>

        <label for="password">CONTRASEÑA</label>
        <p><input type="password"name="nombre "></p>

        <label for="password">CONTRASEÑA</label>
        <p>
            america del norte <input type="radio"name="nombre " value="america del norte">
            america del centro <input type="radio"name="nombre " value="america del centro">
            america del sur <input type="radio"name="nombre " value="america del sur">
        </p>

        <label for="button">OCULTO</label>
        <p><input type="hidden "name="nombre "></p>
        <textarea name="" id="" cols="30" rows="10"></textarea>
        Peliculas:
        <select>
            <option value="">spiderman1</option>
            <option value="">spiderman2</option>
            <option value="">spiderman3</option>
            <option value="">spiderman4</option>

        </select>

    </form>
</head>
<body>
    
</body>
</html>