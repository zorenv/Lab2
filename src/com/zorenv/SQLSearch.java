package com.zorenv;
import java.sql.*;

public class SQLSearch{
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
    //���ݿ������Ϊ EXAMPLE
    static final String DB_URL = "jdbc:mysql://localhost:3306/BookManage?useUnicode=true&characterEncoding=utf-8&useSSL=false";
    //  ���ݿ��û�������
    static final String USER = "root";
    static final String PASS = "112122";
    //����   
    static final String tableName = "Book";  
    static final String tbname = "Author";
    public ResultSet getResult(){
      Connection conn = null;
      Statement stmt = null;
   try{
	   Class.forName("com.mysql.jdbc.Driver");
       conn = DriverManager.getConnection(DB_URL,USER,PASS);
       stmt = conn.createStatement();
       String sql = "SELECT * FROM " + tableName;  
       ResultSet rs = stmt.executeQuery(sql); 
       return rs;
   }catch(SQLException s){
	   return null;
   }catch(Exception e){
	   return null;
   }
    }
    public ResultSet getAuthor(){
        Connection conn = null;
        Statement stmt = null;
     try{
  	   Class.forName("com.mysql.jdbc.Driver");
         conn = DriverManager.getConnection(DB_URL,USER,PASS);
         stmt = conn.createStatement();
         String sql = "SELECT * FROM " + tbname;  
         ResultSet rs = stmt.executeQuery(sql); 
         return rs;
     }catch(SQLException s){
  	   return null;
     }catch(Exception e){
  	   return null;
     }
   }
}
