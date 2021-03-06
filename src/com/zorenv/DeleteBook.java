package com.zorenv;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class DeleteBook extends ActionSupport{
	 //static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
     //数据库的名称为 EXAMPLE
     //static final String DB_URL = "jdbc:mysql://localhost:3306/BookManage?useUnicode=true&characterEncoding=utf8";
     //  数据库用户和密码
     //static final String USER = "root";
     //static final String PASS = "112122";
     //static final String taname = "BookManage";
    String DB_URL = "jdbc:mysql://dmrsesekwhul.rds.sae.sina.com.cn:10510/bookdb";
    String USER = "bookmanage";
    String PASS = "112122";
     //表名   
     static final String tableName = "book";  
     static final String tbname = "author";
	private String ISBN;
	public String execute() throws Exception {
		Connection conn = null;
	    Statement stmt = null;
	try{
	    Class.forName("com.mysql.jdbc.Driver");
	   conn = DriverManager.getConnection(DB_URL,USER,PASS);
	   stmt = conn.createStatement();
	   String sql = "DELETE FROM " + tableName + " WHERE ISBN = "+ Integer.parseInt(getISBN().trim());  
	   stmt.executeUpdate(sql); 
	   return SUCCESS;
	}catch(SQLException s){
		   return ERROR;
	}catch(Exception e){
		   return ERROR;
	}
	}
	
	
	public void setISBN(String ISBN){
		this.ISBN=ISBN;
	}
	public String getISBN(){
		return ISBN;
	}
}
