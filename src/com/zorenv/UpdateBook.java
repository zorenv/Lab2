package com.zorenv;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class UpdateBook extends ActionSupport{
    //private String ISBN;
    private String Title;
    private String Publisher;
    private String PublishDate;
    private String Price;
    private String Author;
	 static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
     //数据库的名称为 EXAMPLE
     static final String DB_URL = "jdbc:mysql://localhost:3306/BookManage?useUnicode=true&characterEncoding=utf8";
     //  数据库用户和密码
     static final String USER = "root";
     static final String PASS = "112122";
     static final String taname = "BookManage";
     //表名   
     static final String tableName = "Book";  
     static final String tbname = "Author";
	private String ISBN;
	public String execute() throws Exception {
		Connection conn = null;
	    Statement stmt = null;
	try{
	    Class.forName("com.mysql.jdbc.Driver");
	   conn = DriverManager.getConnection(DB_URL,USER,PASS);
	   stmt = conn.createStatement();
	   String sql = "UPDATE " + tableName + "set" + getTitle() + ",\'" + getPublisher() + ",\'" + getPublishDate() + ",\'" + getPrice() + ",\'" + getAuthor  () + ",\'" + " WHERE ISBN = "+ Integer.parseInt(getISBN().trim());  
	   stmt.executeUpdate(sql); 
	   return SUCCESS;
	}catch(SQLException s){
		   return ERROR;
	}catch(Exception e){
		   return ERROR;
	}
	}
	
	
	public String getISBN(){
		return ISBN;
	}
	public void setISBN(String ISBN){
		this.ISBN=ISBN;
	}
	public String getTitle(){
		return Title;
	}
	public void setTitle(String Title){
		this.Title=Title;
	}
	public String getPublisher(){
		return Publisher;
	}
	public void setPublisher(String Publisher){
		this.Publisher=Publisher;
	}
	public String getPublishDate(){
		return PublishDate;
	}
	public void setPublishDate(String PublishDate){
		this.PublishDate=PublishDate;
	}
	public String getPrice(){
		return Price;
	}
	public void setPrice(String Price){
		this.Price=Price;
	}
	public String getAuthor(){
		return Author;
	}
	public void setAuthor(String Author){
		this.Author=Author;
	}
}
