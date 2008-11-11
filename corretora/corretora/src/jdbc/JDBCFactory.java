package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import util.Dominios;

public class JDBCFactory {
	
	public static Connection getConecao() throws SQLException, ClassNotFoundException  {
		Class c = Class.forName("com.mysql.jdbc.Driver");
	
		Connection conn = DriverManager.getConnection(
				Dominios.MYSQL_URL, Dominios.MYSQL_USUARIO,
				Dominios.MYSQL_SENHA);
		
		
		return conn;
	}
}
