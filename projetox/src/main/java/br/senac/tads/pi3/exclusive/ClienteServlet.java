/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads.pi3.exclusive;

import br.senac.tads.pi3.dao.ClienteDAO;
import br.senac.tads.pi3.models.Cliente;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author vinicius.fbatista1
 */
@WebServlet(name = "ClienteServlet", urlPatterns = {"/cliente"})
public class ClienteServlet extends HttpServlet {

  @Override
  public void doGet(HttpServletRequest request,
	  HttpServletResponse response)
	  throws ServletException {

    ClienteDAO dao = new ClienteDAO();
    List<Cliente> clientes = dao.listar();

    request.setAttribute("listaClientes", clientes);
    RequestDispatcher dispatcher
	    = request.getRequestDispatcher("cliente.jsp");
    try {
      dispatcher.forward(request, response);
    } catch (IOException ex) {

    }
  }
}
