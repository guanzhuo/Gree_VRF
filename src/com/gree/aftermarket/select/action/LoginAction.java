package com.gree.aftermarket.select.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.gree.aftermarket.select.service.LoginService;
import com.opensymphony.xwork2.ActionSupport;
@Controller
@Scope("prototype")
public class LoginAction extends ActionSupport{
	private String email;
	private String password;
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Resource(name="loginService")
	private LoginService loginService;
	
	public String execute() throws Exception {  
        System.out.println("---------->TestAction execute()"+email+password);  
        loginService.loginInfo(email, password);
        
        return "success";  
    }
}
