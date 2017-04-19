<%-- 
    Document   : entrada
    Created on : 04/04/2017, 22:06:04
    Author     : fernando.tsuda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Entrada</title>
    </head>
    <body>
        <div class="contato">
            <h1>Inclusão de usuário</h1>
            <div class="formulario">
                <form action="resultado.jsp" method="post">
                    <div>
                        <label for="txtnome">Primeiro nome</label>
                        <input type="text" name="nome" id="txtPrimeiroNome" />
                    </div>

                    <div>
                        <label for="txtnome">Segundo nome</label>
                        <input type="text" name="nome" id="txtSegundoNome" />
                    </div>

                    <div>
                        <label for="txtemail">E-mail</label>
                        <input type="text" name="email" id="txtEmail" />
                    </div>

                    <div>
                        <label for="txtemail">Confirme seu e-mail</label>
                        <input type="text" name="confirmEmail" id="txtConfirmEmail" />
                    </div>

                    <div>
                        <label for="txtnasc">Data de nascimento</label>
                        <input type="date" name="nasc" id="txtCasc" />
                    </div>

                    <div>
                        <label for="txtsexo">Sexo</label>
                        <input type="radio" name="sexo" id="radioSexo" value="Masculino"/>
                        <input type="radio" name="sexo" id="radioSexo" value="Feminino"/>
                    </div>

                    <div>
                        <label for="txtcpf">CPF</label>
                        <input type="text" name="cpf" id="txtCpfe" />
                    </div>

                    <div>
                        <label for="txttelefone">Telefone</label>
                        <input type="text" name="telefone" id="txtTelefone" />
                    </div>
                    
                    <div>
                        <label for="txttelefone">Permissões</label>
                        <input type="checkbox" name="permissoes" id="txtPermissoes" value="Cadastrar novos usuários"/>
                        <input type="checkbox" name="permissoes" id="txtPermissoes" value="Mudar permissões dos usuários"/>
                        <input type="checkbox" name="permissoes" id="txtPermissoes" value="Acessar o estoque"/>
                        <input type="checkbox" name="permissoes" id="txtPermissoes" value="Acrescentar produto no estoque"/>
                        <input type="checkbox" name="permissoes" id="txtPermissoes" value="Retirar produtos do estoque"/>
                        <input type="checkbox" name="permissoes" id="txtPermissoes" value="Remover usuários"/>
                        <input type="checkbox" name="permissoes" id="txtPermissoes" value="Revisar relatórios"/>
                        <input type="checkbox" name="permissoes" id="txtPermissoes" value="Escrever relatórios"/>
                    </div>
                    
                    <div>
                        <label for="txtsenha">Senha</label>
                        <input type="password" name="senha" id="txtSenha" />
                    </div>
                    
                    <div>
                        <label for="txtconfirmsenha">Confirmar senha</label>
                        <input type="password" name="confirmSenha" id="txtConfirmSenha" />
                    </div>

                    <div>
                        <input type="submit" value="Salvar" />
                    </div>

                </form>
            </div>
        </div>
    </body>
</html>
