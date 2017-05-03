<%-- 
    Document   : venda
    Created on : 02/05/2017, 21:07:29
    Author     : danilo.kwatanabe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vendas</title>
    </head>
    <body>
        <h1>Realizar venda</h1>

        <form action="resultado.jsp" method="post">
            <div>
                <div>
                    <label for="txtcpfvenda">CPF do cliente</label>
                    <input type="text" name="cpfVenda" id="cpfVenda" />
                </div>

                <div>
                    <label for="txtprodutovenda">Produto</label>
                    <input type="text" name="produtoVenda" id="produtoVenda" />
                </div>

                <div>
                    <label for="txtquantidadevenda">Quantidade</label>
                    <input type="text" name="quantidadeVenda" id="quantidadeVenda" />
                </div>
            </div>
        </form>
    </body>
</html>
