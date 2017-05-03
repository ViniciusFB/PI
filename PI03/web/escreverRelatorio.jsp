<%-- 
    Document   : verRelatorio
    Created on : 02/05/2017, 20:41:08
    Author     : danilo.kwatanabe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Escrever relatório</title>
    </head>
    <body>
        <h1>Escrever relatório</h1>
        <div>
            <div>
                <form action="resultado.jsp" method="post" id="relatorio">
                    <label for="txtrelatorio">Escreva seu relatório</label> <br/>
                <textarea rows="20" cols="100" name="comment" form="relatorio" placeholder="Escreve o relatório"></textarea>
                </form>
            </div>
        </div>
    </body>
</html>
