<%-- 
    Document   : newjsplogin
    Created on : 25/04/2017, 20:28:07
    Author     : bruno.flima4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        <form action="login" method="post">
            <div>
                <label for="txtUsuario">Nome de usuario</label>>
                <input type="text" name="usuario" id="txtusuario"/>
            </div>
             <div>
                <label for="txtUsuario">Senha</label>>
                <input type="password" name="senha" id="txtsenha"/>
            </div>
            <div>
                <input type="submit" value="Entrar"/>
            </div>
        </form>
    </body>
</html>
