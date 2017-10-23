package com.gree.aftermarket.select.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.ServletException;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.gree.aftermarket.select.base.WebBaseAction;
import com.gree.aftermarket.select.bean.User;
import com.gree.aftermarket.select.service.LoginService;

import net.sf.json.JSONObject;
@Controller
@Scope("prototype")
public class LoginAction extends WebBaseAction{
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
//        System.out.println("---------->TestAction execute()"+email+password);  
//        loginService.loginInfo(email, password);
		System.out.println("execute");
        return "success";  
    }
	public void login() throws ServletException, IOException{
		System.out.println("login");
		User user = loginService.loginInfo(email);
		if(user!=null){
			if(user.getPwd().equals(password)){
			    setAttributeToSession("user", user);
			    System.out.println("登录成功");
			    toPageByForward("index.jsp");
//			    Map temp = new HashMap();
//			    temp.put("user", user);
//			    JSONObject json = new JSONObject();
//			    json.fromObject(temp);
//			    try {
//					sendJson(json);
//				} catch (IOException e) {
//					e.printStackTrace();
//				}
			}else{
				getRequest().setAttribute("errorMSG", "密码错误");
				System.out.println("密码错误");
				toPageByForward("login.html");
			}
		}else{
			getRequest().setAttribute("errorMSG", "用户不存在");
			System.out.println("用户名不存在");
			toPageByForward("login.html");
		}
	}
}
