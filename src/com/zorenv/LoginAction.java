package com.zorenv;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class LoginAction extends ActionSupport{
	private String username;
	private String password;
    public String execute() throws Exception {
    	if(!getUsername().equals("admin") || !getPassword().equals("admin")) return "error";
    	else return "success";
    }
    public String getUsername(){
   	 return username;
    }
    public String getPassword(){
    	return password;
    }
    public void setUsername(String username){
    	this.username=username;
    }
   public void setPassword(String password){
	   this.password=password;
   }
  
}