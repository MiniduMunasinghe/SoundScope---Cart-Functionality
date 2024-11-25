package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
public static Connection getConnection() throws SQLException, ClassNotFoundException {
		
		String username = "root";
		String password = "731210";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/database?characterEncoding=utf8", username, password);

		return con;
	}
}
