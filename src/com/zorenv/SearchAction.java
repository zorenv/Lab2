package com.zorenv;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class SearchAction extends ActionSupport{
      private String searchauthor;
//have to initialize it
      //static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
      //数据库的名称为 EXAMPLE
      //static final String DB_URL = "jdbc:mysql://localhost:3306/BookManage";
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

public String execute() throws Exception {
     if(getSearchauthor().equals("")) return ERROR;
	 return SUCCESS;
}
public String getSearchauthor(){
	return searchauthor;
}
public void setSearchauthor(String search){
	this.searchauthor=search;
}
public ResultSet BookSearch(String search){
	  Connection conn = null;
      Statement stmt = null;
 try{
	   Class.forName("com.mysql.jdbc.Driver");
     conn = DriverManager.getConnection(DB_URL,USER,PASS);
     stmt = conn.createStatement();
     String sql = "SELECT * FROM " + tbname + " WHERE Name like "+ "\'%"+search+"%\'";  
     ResultSet rs = stmt.executeQuery(sql); 
     return rs;
 }catch(SQLException s){
	   return null;
 }catch(Exception e){
	   return null;
 }
}
}