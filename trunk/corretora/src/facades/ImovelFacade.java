package facades;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import jdbc.JDBCImovel;

import vo.Imovel;

public class ImovelFacade extends SuperFacade {

	public void cadastrarImovel(Imovel i) {
		JDBCImovel imovelDao = new JDBCImovel();
		try {

			imovelDao.cadastraImovel(i);
		} catch (SQLException e) {

			e.printStackTrace();
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		}

	}

	public Collection<Imovel> listarImoveis() {
		JDBCImovel imovelDao = new JDBCImovel();
		Collection<Imovel> colImovel = new ArrayList<Imovel>();
		try {

			colImovel =  imovelDao.listarImoveis();
		} catch (SQLException e) {

			e.printStackTrace();
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		}
		
		return colImovel;

	}

}
