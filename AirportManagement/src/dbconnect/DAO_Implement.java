package dbconnect;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class DAO_Implement implements DAO {
	Connection connection;
	Statement statement;

	DBConnection dbconnection;

	public DAO_Implement() {
		try {
			dbconnection = new DBConnection();
			connection = dbconnection.getConnetion();
			statement = connection.createStatement();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public int putData(String query) {
		// TODO Auto-generated method stub
		try {

			return statement.executeUpdate(query);
		} catch (Exception e) {
			System.out.println("Exception in putData() ->" + e.getMessage());
			return -1;
		}
	}

	@Override
	public ResultSet getData(String query) {
		// TODO Auto-generated method stub
		try {

			return statement.executeQuery(query);
		} catch (Exception e) {
			System.out.println("Exception in getData() ->" + e.getMessage());
			return null;
		}
	}

	@Override
	public void closeConnection() {
		// TODO Auto-generated method stub
		try {
			if (connection != null) {

				connection.close();
			}

			if (statement != null) {
				statement.close();
			}

		} catch (Exception e) {
			System.out.println("Exception while closing connection" + e.getMessage());
		}
	}

	@Override
	public boolean isExists(String query) {
		// TODO Auto-generated method stub
		return false;
	}

}
