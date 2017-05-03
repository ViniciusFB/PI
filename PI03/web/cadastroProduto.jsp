<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cadastro de Produto</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="style.css" rel="stylesheet">
        <style>
            h1 {
                margin-bottom: 1rem;
                color: #F90;
            }

            * {
                margin: 0;
                padding: 0;
            }
            body {
                padding: 3em;

            }

            fieldset {
                border: 0;
            }

            body, input, select, textarea, button {
                font-family: sans-serif;
                font-size: 1em;
            }

            .grupo:before, .grupo:after {
                content: " ";
                display: table;
            }

            .grupo:after {
                clear: both;
            }

            .campo {
                margin-bottom: 1em;
            }

            .campo label {
                margin-bottom: 0.2em;
                color: #666;
                display: block;
            }

            fieldset.grupo .campo {
                float:  left;
                margin-right: 1em;
            }

            .campo input[type="text"],
            .campo input[type="email"],
            .campo input[type="url"],
            .campo input[type="tel"],
            .campo select,
            .campo textarea {
                padding: 0.2em;
                border: 1px solid #CCC;
                box-shadow: 2px 2px 2px rgba(0,0,0,0.2);
                display: block;
            }

            .campo select option {
                padding-right: 1em;
            }

            .campo input:focus, .campo select:focus, .campo textarea:focus {
                background: #FFC;
            }

            .campo label.checkbox {
                color: #000;
                display: inline-block;
                margin-right: 1em;
            }

            .botao {
                font-size: 1.5em;
                background: #F90;
                border: 0;
                margin-bottom: 1em;
                color: #FFF;
                padding: 0.2em 0.6em;
                box-shadow: 2px 2px 2px rgba(0,0,0,0.2);
                text-shadow: 1px 1px 1px rgba(0,0,0,0.5);
            }

            .botao:hover {
                background: #FB0;
                box-shadow: inset 2px 2px 2px rgba(0,0,0,0.2);
                text-shadow: none;
            }

            .botao, select, label.checkbox {
                cursor: pointer;
            }
        </style>

    </head>
    <body>

        <h1>Cadastrar Produtos</h1>

        <form action="#" method="post">
            <fieldset>

                <fieldset class="grupo">
                    <div class="campo">
                        <label for="nome">Nome</label>
                        <input type="text" id="nome" name="nome" style="width: 20em" value="" />
                    </div>
                    <div class="campo">
                        <label for="codigo">Código</label>
                        <input type="text" id="codigo" name="codigo" style="width: 20em" value="" />
                    </div>
                </fieldset>	

                <fieldset class="grupo">
                    <div class="campo">
                        <label for="valor">Valor</label>
                        <input type="text" id="valor" style="width: 20em" value="" />
                    </div>

                    <div class="campo">
                        <label for="tipo">Tipo</label>
                        <select name="tipo" id="tipo">
                            <option value="">--</option>
                            <option value="bolsa">Bolsa</option>
                            <option value="relogio">Relógio</option>
                            <option value="oculos">Óculos</option>
                            <option value="bone">Boné</option>
                        </select>
                    </div>


                    <div class="campo">
                        <label for="quantidade">Quantidade</label>
                        <input type="number" id="quantidade" style="width: 5em" value=""/>
                        <div>

                            </fieldset>








                            <div class="campo">
                                <label for="mensagem">Descrição</label>
                                <textarea rows="6" style="width: 41em" id="descricao" name="descricao"></textarea>
                            </div>


                            <button class="botao submit" type="submit" name="submit">Enviar</button>

                            </fieldset>
                            </form>

                            </body>
                            </html>
