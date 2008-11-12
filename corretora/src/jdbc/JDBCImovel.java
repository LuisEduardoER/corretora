package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import vo.Imovel;

public class JDBCImovel {

	public void cadastraImovel(Imovel i) throws SQLException,
			ClassNotFoundException {
		PreparedStatement ps = null;

		Connection conn = JDBCFactory.getConexao();
		try {
			ps = conn
					.prepareStatement("INSERT INTO imovel (imo_nome, imo_descricao, imo_logradouro,imo_complemento,"
							+ " imo_numero, imo_bairro, imo_cidade"
							+ ",imo_estado,imo_cep,imo_latitude,imo_longitude)"
							+ " VALUES(?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, i.getNome());
			ps.setString(2, i.getDescricao());
			ps.setString(3, i.getLogradouro());
			ps.setString(4, i.getComplemento());
			ps.setString(5, i.getNumero());
			ps.setString(6, i.getBairro());
			ps.setString(7, i.getCidade());
			ps.setString(8, i.getEstado());
			ps.setString(9, i.getCep());
			ps.setString(10, i.getLatitude());
			ps.setString(11, i.getLongitude());

			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.fecharRecursos(null, ps);
		}
	}

	public Collection<Imovel> listarImoveis() throws SQLException,
			ClassNotFoundException {
		
		Collection<Imovel> colImoveis = new ArrayList<Imovel>();
		PreparedStatement ps = null;
		ResultSet rs = null;
		Connection conn = JDBCFactory.getConexao();
		try {
			ps = conn
					.prepareStatement("SELECT * FROM  imovel ");

		
			rs = ps.executeQuery();
			while (rs.next()){
				Imovel i = new Imovel(new Integer(rs.getString("imo_id")), rs
						.getString("imo_nome"), rs.getString("imo_descricao"),
						rs.getString("imo_logradouro"), rs
								.getString("imo_complemento"), rs
								.getString("imo_numero"), rs
								.getString("imo_bairro"), rs
								.getString("imo_cidade"), rs
								.getString("imo_estado"), rs
								.getString("imo_cep"), rs
								.getString("imo_latitude"), rs
								.getString("imo_longitude"), null);
				
				colImoveis.add(i);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.fecharRecursos(null, ps);
		}
		return colImoveis;
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
