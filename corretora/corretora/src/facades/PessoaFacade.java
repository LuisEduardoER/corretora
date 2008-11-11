package facades;

import jdbc.JDBCLogin;
import vo.Pessoa;

public class PessoaFacade extends SuperFacade {

	public Pessoa pequisarLogin(String pLogin, String pSenha) throws Exception {
		Pessoa p = new Pessoa();
		JDBCLogin loginDao = new JDBCLogin();
		p = loginDao.verificaLogin(pLogin, pSenha);
		return p;
	}

}
