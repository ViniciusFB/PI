<%-- 
    Document   : cadastrarCliente
    Created on : 02/05/2017, 20:53:42
    Author     : danilo.kwatanabe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de cliente</title>
    </head>
    <body>
        <h1>Cadastro de cliente</h1>
        <div>
            <form action="resultado.jsp" method="post">
                <div>
                    <label for="txtnomecliente">Nome do cliente</label>
                    <input type="text" name="nomeCliente" id="nome" />
                </div>

                <div>
                    <label for="txtemailcliente">E-mail do cliente</label>
                    <input type="text" name="emailCliente" id="email" />
                </div>

                <div>
                    <label for="txconfirmemail">Confirme o e-mail do cliente</label>
                    <input type="text" name="confirmEmailCliente" id="confirmEmail" />
                </div>

                <div>
                    <label for="txttelefonecliente">Telefone de contato do cliente</label>
                    <input type="text" name="telefoneCliente" id="telefone" />
                </div>

                <div>
                    <label for="txtcpfcliente">CPF do cliente</label>
                    <input type="text" name="cpfCliente" id="cpf" />
                </div>

                <div>
                    <label for="txtenderecocliente">Endereço do cliente</label>
                    <input type="text" name="enderecoCliente" id="endereco" />
                </div>

                <div>
                    <label for="txtcasacliente">Número da casa do cliente</label>
                    <input type="text" name="numeroCasaCliente" id="numeroCasa" />
                </div>

                <div>
                    <input type="submit" value="Salvar" />
                </div>
                
            </form>
        </div>
    </body>
</html>
