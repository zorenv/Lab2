package com.zorenv;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.opensymphony.xwork2.ActionSupport;

public class AddAction extends ActionSupport{
      private String ISBN;
      private String Title;
      private String Publisher;
      private String PublishDate;
      private String Price;
      private String Author;
      private int index;
      private int Age;
      private String Country;
      private String Name;
	  //have to initialize it
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

public String execute() throws Exception {
     ResultSet rs=Author();
     int index = 1;
     int no=0;
     while(rs.next()){
    	 if(rs.getString("Name").equals(getAuthor())){
    		 no=rs.getInt("AuthorID");
    	 }else{
    		 index++;
    	 }
     }
     if(no==0){
    	 setindex(index);
    	 int back = BookInsert(index);
    	 if(back == 0) return "error";
    	 return "needAdd";
     }else{
    	int back = BookInsert(no);
    	 if(back == 0) return "error";
    	 else return "success";
     }
}
public String addAuthor() throws Exception { 
	ResultSet rs=Author();
    int index = 1;
    while(rs.next()){
   	 if(!rs.getString("Name").equals(getAuthor())){
   		index++;
   		setindex(index);
   	 }
    }
	Connection conn = null;
    Statement stmt = null;
try{
    Class.forName("com.mysql.jdbc.Driver");
   conn = DriverManager.getConnection(DB_URL,USER,PASS);
   stmt = conn.createStatement();
   String sql = "INSERT " + tbname + " VALUES("+getindex()+",\'"+getName()+"\',"+getAge()+",\'"+getCountry()+"\')";  
   stmt.executeUpdate(sql); 
   return SUCCESS;
}catch(SQLException s){
	   return ERROR;
}catch(Exception e){
	   return ERROR;
}
}

public int BookInsert(int no){
	  Connection conn = null;
      Statement stmt = null;
 try{
	   Class.forName("com.mysql.jdbc.Driver");
     conn = DriverManager.getConnection(DB_URL,USER,PASS);
     stmt = conn.createStatement();
     String sql = "INSERT " + tableName + " VALUES("+ISBN+",\'"+Title+"\',\'"+Publisher+"\',\'"+PublishDate+"\',"+Price+","+no+")";  
     int rs = stmt.executeUpdate(sql); 
     return rs;
 }catch(SQLException s){
	   return 0;
 }catch(Exception e){
	   return 0;
 }
}

public ResultSet Author(){
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
public int getindex(){ 
	return index;
}
public void setindex(int index){
	this.index=index;
}
public int getAge(){
	return Age;
}
public void setAge(int Age){ 
	this.Age=Age;
}
public String getCountry(){
	return Country;
}
public void setCountry(String Country){
	this.Country=Country;
}
public  String getName(){ 
	return Name;
}
public void setName(String Name){
	this.Name=Name;
}



}