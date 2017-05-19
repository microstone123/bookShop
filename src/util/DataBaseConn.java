package util;

import java.sql.*;

public class DataBaseConn {

	public Connection conn = null;

	public void createConn() {
		String DRIVER = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/ch19?user=root&password=sa&useUnicode=true&characterEncoding=gb2312";
		if (conn == null) {
			try {
				Class.forName(DRIVER).newInstance();
				conn = DriverManager.getConnection(url);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public Connection getConn() {
		if (conn == null) {
			createConn();
		}
		return conn;
	}

	public void closeConn() {
		if (conn != null) {
			try {
				conn.close();
				conn = null;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
