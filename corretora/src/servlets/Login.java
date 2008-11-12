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
public class Login extends javax.servlet.http.HttpServlet implements
		javax.servlet.Servlet {
	static final long serialVersionUID = 1L;

	public Login() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Integer contador = 0;
		String pLogin = "";
		String pSenha = "";
		if (request.getParameter("login") != null) {
			pLogin = request.getParameter("login").toString();
			contador += 1;
		}

		if (request.getParameter("senha") != null) {
			pSenha = request.getParameter("senha").toString();
			contador += 2;
		}

		PessoaFacade pesFacade = new PessoaFacade();
		Pessoa p = new Pessoa();
		try {
			if (contador == 3) {
				p = pesFacade.pequisarLogin(pLogin, pSenha);
				if (p != null) {
					request.getSession().setAttribute("usuario", p);

				} else {
					request.getSession().setAttribute("usuario", null);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			response.sendRedirect("index.jsp?erro=" + contador);
		}
	}
}