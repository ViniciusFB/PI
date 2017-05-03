<%-- 
    Document   : home
    Created on : 25/04/2017, 21:19:45
    Author     : bruno.flima4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projeto X</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/home.css" rel="stylesheet" />
        <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
    </head>
    <body>
<!--        <div>
            <p class="barNav">
                <a href="seu_link.html">Home</a>
                <a href="seu_link.html">Filiais</a>
                <a href="seu_link.html">Contato</a>
            </p>
        </div>-->

<nav
  <ul class="menu">
		<li><a href="#">Home</a></li>
                <li><a href="#">Login</a></li>
		<li><a href="#">Sobre</a></li>
	  		<li><a href="#">O que fazemos?</a>
	         	<ul>
	                  <li><a href="#">Web Design</a></li>
	                  <li><a href="#">SEO</a></li>
	                  <li><a href="#">Design</a></li>                    
	       		</ul>
			</li>
		<li><a href="#">Contato</a></li>                
</ul>
</nav>
<form method="post">
<div class="oi">
    <div class="logo"></div>
    <div class="login-block">
        <h1>Login</h1>
        <input type="text" value="" placeholder="Username" id="username" />
        <input type="password" value="" placeholder="Password" id="password" />
        <input type="submit" value="Entrar"></input>
    </div>
</div>
    </form>
        <c:import url="./rodape.jsp" />
    </body>
</html>
