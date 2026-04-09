package com.airport.model;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.json.JSONException;
import org.json.JSONObject;

import dbconnect.DAO_Implement;
import dbconnect.DAO;
import dbconnect.DBConnection;

public class Login implements Serializable{
		private String mailid,password;
		private String sessionKey,sessionValue;
		private String target;
		private int userId;
		public String getEmail() {
			return mailid;
		}

		public void setEmail(String email) {
			this.mailid = email;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}
		
		public String getSessionKey() {
			return sessionKey;
		}

		public void setSessionKey(String sessionKey) {
			this.sessionKey = sessionKey;
		}

		public String getSessionValue() {
			return sessionValue;
		}

		public void setSessionValue(String sessionValue) {
			this.sessionValue = sessionValue;
		}

		public String getTarget() {
			return target;
		}

		public void setTarget(String target) {
			this.target = target;
		}
		
		public int getUserId() {
			return userId;
		}

		public void setUserId(int userId) {
			this.userId = userId;
		}

		public boolean isValidUser(){
			boolean isValid = false;
			DAO dao = new DAO_Implement();
			String query = "select * from admin_tbl where adminId='"+getEmail()+"'" ;
			ResultSet resultSet = dao.getData(query);
			try {
				if(resultSet.next()) {
					String dbPassword = resultSet.getString("password");
					isValid = dbPassword.equals(getPassword());
					if(isValid) {
						setTarget("Admin.jsp");
						setSessionKey("adminId");
						setSessionValue(getEmail());
					}
				}
				else {
					query = "select * from users_tbl where mailid='"+getEmail()+"'";
					resultSet = dao.getData(query);
					if(resultSet.next()) {
						String dbPassword = resultSet.getString("password");
						isValid = dbPassword.equals(getPassword());
						if(isValid) {
							setTarget("User.jsp");
							setSessionKey("userId");
							setSessionValue(resultSet.getInt("userId")+"");
						}
					}
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			dao.closeConnection();
			return isValid;
		}
		
		public boolean checkMailId() {
			boolean isValid = false;
			DAO dao = new DAO_Implement();
			String query = "" ;
			ResultSet resultSet = dao.getData(query);
			try {
					query = "select * from user_tbl where mailid='"+getEmail()+"'";
					System.out.println(query);
					resultSet = dao.getData(query);
					isValid = resultSet.next();
					if(isValid)
					{
						setSessionKey("userId");
						setSessionValue(resultSet.getInt("userId")+"");
					}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			dao.closeConnection();
			return isValid;
		}
		
		public boolean updatePassword() {
			boolean isUpdated = false;
			DAO dao = new DAO_Implement();
			String query = "update users_tbl set password='"+getPassword()+"' where userId="+getUserId();
			System.out.println(query);
			int rows = dao.putData(query);
			isUpdated = rows>0;
			dao.closeConnection();
			return isUpdated;
		}
	}
