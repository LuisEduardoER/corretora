package servlets;

import java.io.IOException;

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
				request.getParameter("ddd") + "-"
						+ request.getParameter("telefone"), request
						.getParameter("dddcel")
						+ "-" + request.getParameter("celular"), request
						.getParameter("tipo"), request
						.getParameter("logradouro"), request
						.getParameter("complemento"), request
						.getParameter("numero"),
				request.getParameter("bairro"), request.getParameter("cidade"),
				request.getParameter("estado"), request.getParameter("cep"),
				request.getParameter("login"), request.getParameter("senha"));
		try {
			pesFacade.cadastrarPessoa(p);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			response.sendRedirect("cadastrosucesso.jsp");
		}
	}
}