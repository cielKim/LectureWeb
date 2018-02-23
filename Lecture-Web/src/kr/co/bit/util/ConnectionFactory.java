package kr.co.bit.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {

	public Connection getConnection() {

		
		Connection conn = null;
		
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String url = "jdbc:oracle:thin:@localhost:1522:orcl";
			String user = "kse";
			String password = "1234";
			
			conn = DriverManager.getConnection(url, user, password);

		} catch (Exception e) {

			e.printStackTrace();

		}

		return conn;
	}
}