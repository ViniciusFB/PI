/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads3.pi3b;

import br.senac.tads3.pi3.modelos.Produto;
import br.senac.tads3.pi3.tads.daos.DaoProduto;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author fernando.tsuda
 */
@WebServlet(name = "EntradaServlet", urlPatterns = {"/entrada"})
public class EntradaServlet extends HttpServlet {

  /**
   * Handles the HTTP <code>GET</code> method.
   *
   * @param request servlet request
   * @param response servlet response
   * @throws ServletException if a servlet-specific error occurs
   * @throws IOException if an I/O error occurs
   */
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
	  throws ServletException, IOException {
    RequestDispatcher dispatcher = 
	    request.getRequestDispatcher("entrada.jsp");
    dispatcher.forward(request, response);
  }

  /**
   * Handles the HTTP <code>POST</code> method.
   *
   * @param request servlet request
   * @param response servlet response
   * @throws ServletException if a servlet-specific error occurs
   * @throws IOException if an I/O error occurs
   */
  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       HttpSession sessao = request.getSession(); 
       
       //Setando o valor que sera resgato na JSP
       request.setAttribute("usuarioLogado", sessao.getAttribute("usuarioLogado"));

       try{            
            DaoProduto produtosDao = new DaoProduto();
            
            //Criando a classe com os parametros recebidos pelo getParameter e pelo resultado do metodo getCodOperacaoDisp()
            Produto produto = new Produto(produtosDao.getCodOperacaoDisp()
                                        , request.getParameter("nome")
                                        , Integer.parseInt(request.getParameter("codigo"))
                                        , request.getParameter("tipo")
                                        , request.getParameter("quantidade")
                                        , request.getParameter("descricao")
                                        , Double.parseDouble(request.getParameter("valor")));
            
            //Metodo que ira cadastrar o produto
            produtosDao.inserir(produto);
            
            //Setando o valor que sera resgato na JSP
            request.setAttribute("produto", "Produto: " + request.getParameter("nome") + " cadastrado com sucesso!!");            
            
            //Enviando os valores setados no Servlet para a JSP
            this.getServletContext().getRequestDispatcher("/WEB-INF/CadastraProd.jsp").forward(request, response);
        }
        catch(NumberFormatException | SQLException e){
            System.out.println("Erro: " + e);
        } catch (Exception ex) {      
          Logger.getLogger(EntradaServlet.class.getName()).log(Level.SEVERE, null, ex);
      }      
    }


}
