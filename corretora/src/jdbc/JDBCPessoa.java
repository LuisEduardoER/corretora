package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import vo.Pessoa;

public class JDBCPessoa {

	public Pessoa verificaLogin(String pLogin, String pSenha)
			throws SQLException, ClassNotFoundException {
		Pessoa p = new Pessoa();

		PreparedStatement ps = null;
		ResultSet rs = null;
		Connection conn = JDBCFactory.getConexao();
		try {
			ps = conn
					.prepareStatement("SELECT * FROM pessoa t where t.pes_login = ? and t.pes_senha = md5(?)");
			ps.setString(1, pLogin);
			ps.setString(2, pSenha);
			rs = ps.executeQuery();

			while (rs.next()) {

				p = new Pessoa(new Integer(rs.getString("pes_id")), rs
						.getString("pes_nome"), rs.getString("pes_sobre_nome"),
						rs.getString("pes_email"),
						rs.getString("pes_telefone"), rs
								.getString("pes_celular"), rs
								.getString("pes_tipo"), rs
								.getString("pes_login"), rs
								.getString("pes_senha"));

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

	public void cadastraPessoa(Pessoa pessoa) throws SQLException,
			ClassNotFoundException {
		PreparedStatement ps = null;

		Connection conn = JDBCFactory.getConexao();
		try {
			ps = conn
					.prepareStatement("INSERT INTO pessoa (pes_nome, pes_sobre_nome, pes_email, pes_telefone, pes_celular, "
							+ "pes_login,pes_senha,pes_tipo) VALUES(?,?,?,?,?,?,md5(?),?)");
			ps.setString(1, pessoa.getNome());
			ps.setString(2, pessoa.getSobreNome());
			ps.setString(3, pessoa.getEmail());
			ps.setString(4, pessoa.getTelefone());
			ps.setString(5, pessoa.getCelular());
			ps.setString(6, pessoa.getLogin());
			ps.setString(7, pessoa.getSenha());
			ps.setString(8, pessoa.getTipoPessoa());

			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.fecharRecursos(null, ps);
		}
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
