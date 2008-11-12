package facades;

import java.sql.SQLException;

import jdbc.JDBCPessoa;
import vo.Pessoa;

public class PessoaFacade extends SuperFacade {

	public Pessoa pequisarLogin(String pLogin, String pSenha) throws Exception {
		Pessoa p = new Pessoa();
		JDBCPessoa loginDao = new JDBCPessoa();
		p = loginDao.verificaLogin(pLogin, pSenha);
		return p;
	}

	public void cadastrarPessoa(Pessoa p) {
		JDBCPessoa loginDao = new JDBCPessoa();
		try {
			p.setTipoPessoa("0");
			loginDao.cadastraPessoa(p);
		} catch (SQLException e) {

			e.printStackTrace();
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		}

	}
}
