package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.Pessoa;
import facades.PessoaFacade;

/**
 * Servlet implementation class for Servlet: Login
 * 
 */
public class CadastrarPessoa extends javax.servlet.http.HttpServlet implements
		javax.servlet.Servlet {
	static final long serialVersionUID = 1L;

	public CadastrarPessoa() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {


		PessoaFacade pesFacade = new PessoaFacade();
	
		Pessoa p = new Pessoa(null, request.getParameter("nome"), request
				.getParameter("sobrenome"), request.getParameter("email"),
				request.getParameter("telefone"), request.getParameter("celular"),
				request.getParameter("tipo"), request.getParameter("login"),
				request.getParameter("senha"));
		try {
			pesFacade.cadastrarPessoa(p);
		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			response.sendRedirect("inicial.html");
		}
	}
}