package com.group.bean;
import java.sql.*;

public class DataBase {
	 
	 //��ȡ���ݿ����ӵ���
	 public Connection getConnection() throws SQLException, 
	 	InstantiationException, IllegalAccessException,  
     	ClassNotFoundException { 
		 
		Connection conn = null;   
		Class.forName("com.mysql.jdbc.Driver");
		String connectString = "jdbc:mysql://blog.chonor.cn:3306/GoodMovie_15352008"
				+ "?autoReconnect=true&useUnicode=true"
				+ "&characterEncoding=UTF-8";  
		String user = "user";   
		String password = "123";  
		// �������ݿ����ȡ��һ�����ݿ�����  
		conn = DriverManager.getConnection(connectString, user, password);  
		return conn;  
	 }  
	 
	 //��
	 public ResultSet select(String sql) throws Exception {  
	    Connection conn = null;  
	    Statement stmt = null;  
	    ResultSet rs = null;  
	    try {  
	         conn = getConnection();  
	         stmt = conn.createStatement();  
	         rs = stmt.executeQuery(sql);  
	         return rs;  
	    } catch (SQLException sqle) {  
	         throw new SQLException("select data exception: "  
	                    + sqle.getMessage());  
	    } catch (Exception e) {  
	         throw new Exception("System e exception: " + e.getMessage());  
	    }    
	 }
	 
	 //��
	 public void insert(String sql) throws Exception {  
		 Connection conn = null;  
	     PreparedStatement ps = null;  
	     try {  
	            conn = getConnection();  
	            ps = conn.prepareStatement(sql);  
	            ps.executeUpdate();  
	     } catch (SQLException sqle) {  
	    	 throw new Exception("insert data exception: " + sqle.getMessage());  
	     } finally {  
	    	 try {  
	    		 if (ps != null) {  
	    			 ps.close();  
	             }  
	         } catch (Exception e) {  
	            throw new Exception("ps close exception: " + e.getMessage());  
	         }  
	     }  
	     try {  
	    	 if (conn != null) {  
	    		 conn.close();  
	         }  
	     } catch (Exception e) {  
	    	 throw new Exception("connection close exception: " + e.getMessage());  
	     }  
	 }
	 
	 //��
	 public void update(String sql) throws Exception {  
		 Connection conn = null;  
	     PreparedStatement ps = null;  
	     try {  
	    	 conn = getConnection();  
	         ps = conn.prepareStatement(sql);  
	         ps.executeUpdate();  
	     } catch (SQLException sqle) {  
	    	 throw new Exception("update exception: " + sqle.getMessage());  
	     } finally {  
	         try {  
	        	 if (ps != null) {  
	                  ps.close();  
	             }  
	         } catch (Exception e) {  
	             throw new Exception("ps close exception: " + e.getMessage());  
	         }  
	     }  
	     try {  
	         if (conn != null) {  
	        	 conn.close();  
	         }  
	     } catch (Exception e) {  
	    	 throw new Exception("connection close exception: " + e.getMessage());  
	     }  
	 }  
	 
	 public void delete(String sql) throws Exception {  
		 Connection conn = null;  
	     PreparedStatement ps = null;  
	     try {  
	    	 conn = getConnection();  
	         ps = conn.prepareStatement(sql);  
	         ps.executeUpdate();  
	     } catch (SQLException sqle) {  
	         throw new Exception("delete data exception: " + sqle.getMessage());  
	     } finally {  
	        try {  
	        	if (ps != null) {  
	        		ps.close();  
	            }  
	        } catch (Exception e) {  
	        	throw new Exception("ps close exception: " + e.getMessage());  
	        }  
	     }  
	     try {  
	    	 if (conn != null) {  
	    		 conn.close();  
	         }  
	     } catch (Exception e) {  
	         throw new Exception("connection close exception: " + e.getMessage());  
	     }  
	 }  
}
