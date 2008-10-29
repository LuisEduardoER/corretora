package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import vo.Pessoa;

public class JDBCLogin {

	public Pessoa verificaLogin(String pLogin, String pSenha) throws SQLException, ClassNotFoundException {
		Pessoa p = new Pessoa();

		PreparedStatement ps = null;
		ResultSet rs = null;
		Connection conn = JDBCFactory.getConecao();
		try {
			ps = conn
					.prepareStatement("SELECT * FROM usuario t where t.usr_login = ? and t.usr_senha = ?");
			ps.setString(1, pLogin);
			ps.setString(2, pSenha);
			rs = ps.executeQuery();

			while (rs.next()) {

				p = new Pessoa(new Integer(rs.getString("usr_id")), rs
						.getString("usr_nome"), rs.getString("usr_cpfcnpj"), rs
						.getString("usr_tipopessoa"),
						rs.getString("usr_login"), rs.getString("usr_senha"));

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.fecharRecursos(rs, ps);
		}

		return p;

	}

	private void fecharRecursos(ResultSet rs, PreparedStatement ps) {

		try {
			if (ps != null) {
				ps.close();
			}
			if (rs != null) {
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
