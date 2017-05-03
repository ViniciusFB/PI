/*
 * The MIT License
 *
 * Copyright 2017 bruno.flima4.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
package br.senac.tads3.pi3b.agendawebmvn;

import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author bruno.flima4
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet{
    //Simulação hardcoded dos usuarios cadastrados no sistema.
    private static final Map<String, String> USUARIOS_CADASTRADOS;
    
    static{
        USUARIOS_CADASTRADOS =  new  LinkedHashMap<>();
        USUARIOS_CADASTRADOS.put("madruga", "pagueoaluguel");
        USUARIOS_CADASTRADOS.put("bozo", "abcd1234");
        USUARIOS_CADASTRADOS.put("bruno", "bruno1");
    }
    
   @Override
   public void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException{
       
       RequestDispatcher dispatcher =  request.getRequestDispatcher("/WEB-INF/jsp/login.jsp");
       dispatcher.forward(request, response);
   }
   @Override
   public void doPost(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException{
       
       //Recupera dados preenchidos pelo usuario
       String usuario = request.getParameter("usuario");
       String senha = request.getParameter("senha");
       
       //Compara com o usuario/senha previamente cadastrado
       String senhaCadastrada = USUARIOS_CADASTRADOS.get(usuario);
        if (senhaCadastrada != null && senhaCadastrada.equals(senha)) {
           //Usuario existe e a senha esta correta
           
            // Caso exista, invalida a sessão anterior (www.owasp.org)
            HttpSession sessao = request.getSession(false);
            if (sessao != null) {
                sessao.invalidate();
            }
             //Criar uma sessão
            sessao = request.getSession(true);
            sessao.setAttribute("usuario", usuario);
            response.sendRedirect(request.getContextPath() + "/agenda"); 
       }else{
            response.sendRedirect(request.getContextPath() + "/erroLogin.jsp");
        }
    }
}