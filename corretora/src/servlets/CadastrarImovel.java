package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.Imovel;
import facades.ImovelFacade;

/**
 * Servlet implementation class for Servlet: Login
 * 
 */
public class CadastrarImovel extends javax.servlet.http.HttpServlet implements
		javax.servlet.Servlet {
	static final long serialVersionUID = 1L;

	public CadastrarImovel() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		ImovelFacade imovelFacade = new ImovelFacade();

		Imovel i = new vo.Imovel(null, request.getParameter("nome"), request
				.getParameter("descricao"), request.getParameter("logradouro"),
				request.getParameter("complemento"), request
						.getParameter("numero"),
				request.getParameter("bairro"), request.getParameter("cidade"),
				request.getParameter("estado"), request.getParameter("cep"),
				request.getParameter("latitude"), request
						.getParameter("longitude"), null);

		try {
			imovelFacade.cadastrarImovel(i);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			response.sendRedirect("cadastrosucesso.jsp");
		}
	}
}