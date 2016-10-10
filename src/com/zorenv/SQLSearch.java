package com.zorenv;
import java.sql.*;

public class SQLSearch{
	//static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
    //数据库的名称为 EXAMPLE
    //static final String DB_URL = "jdbc:mysql://localhost:3306/BookManage?useUnicode=true&characterEncoding=utf-8&useSSL=false";
    //  数据库用户和密码
    //static final String USER = "root";
    //static final String PASS = "112122";
    String DB_URL = "jdbc:mysql://dmrsesekwhul.rds.sae.sina.com.cn:10510/bookmanage";
    String USER = "bookmanage";
    String PASS = "112122";
    //表名   
    static final String tableName = "book";  
    static final String tbname = "author";
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
    public int getAuthorID(String Name){
        Connection conn = null;
        Statement stmt = null;
     try{
  	   Class.forName("com.mysql.jdbc.Driver");
         conn = DriverManager.getConnection(DB_URL,USER,PASS);
         stmt = conn.createStatement();
         String sql = "SELECT * FROM " + tbname + " WHERE Name = "+ "\'" + Name + "\'";  
         ResultSet rs = stmt.executeQuery(sql); 
         if(rs.next()){
         return rs.getInt("AuthorID");
         }else{
        	 return -1;
         }
     }catch(SQLException s){
  	   return -1;
     }catch(Exception e){
  	   return -1;
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
