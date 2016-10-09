package com.zorenv;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class SearchAction extends ActionSupport{
      private String book;
//have to initialize it
      static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
      //数据库的名称为 EXAMPLE
      static final String DB_URL = "jdbc:mysql://localhost:3306/BookManage";
      //  数据库用户和密码
      static final String USER = "root";
      static final String PASS = "112122";
      static final String taname = "BookManage";
      //表名   
      static final String tableName = "Book";  
      static final String tbname = "Author";

public String execute() throws Exception {
     if(getBook().equals("")) return ERROR;
	 return SUCCESS;
}
public String getBook(){
	return book;
}
public void setBook(String book){
	this.book=book;
}
public ResultSet BookSearch(String book){
	  Connection conn = null;
      Statement stmt = null;
 try{
	   Class.forName("com.mysql.jdbc.Driver");
     conn = DriverManager.getConnection(DB_URL,USER,PASS);
     stmt = conn.createStatement();
     String sql = "SELECT * FROM " + tableName + "WHERE Title like"+ "\'%"+book+"%\'";  
     ResultSet rs = stmt.executeQuery(sql); 
     return rs;
 }catch(SQLException s){
	   return null;
 }catch(Exception e){
	   return null;
 }
}
}