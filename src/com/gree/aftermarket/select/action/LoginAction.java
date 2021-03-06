package com.gree.aftermarket.select.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.ServletException;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.gree.aftermarket.select.base.WebBaseAction;
import com.gree.aftermarket.select.bean.Permission;
import com.gree.aftermarket.select.bean.User;
import com.gree.aftermarket.select.common.CommonUtil;
import com.gree.aftermarket.select.service.LoginService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@Scope("prototype")
public class LoginAction extends WebBaseAction {
	private String email;
	private String password;

	public LoginService getLoginService() {
		return loginService;
	}

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

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

	@Resource(name = "loginService")
	private LoginService loginService;

	public String execute() throws Exception {
		System.out.println("execute");
		return "success";
	}

	public void login() throws ServletException, IOException {
		System.out.println("login");
		User user = loginService.loginInfo(email);
		if (user != null) {
			if (user.getPwd().equals(password)) {
				setAttributeToSession("user", user);
				System.out.println("登录成功");
				getResponse().setHeader("Cache-Control", "no-cache");
				// Directs caches not to store the page under any circumstance
				getResponse().setHeader("Cache-Control", "no-store");
				// HTTP 1.0 backward compatibility
				getResponse().setHeader("Pragma", "no-cache");
				// Causes the proxy cache to see the page as "stale"
				getResponse().setDateHeader("Expires", 0);
				toPageByRedirect("page/homePage.jsp");
				// JSONObject json = new JSONObject();
				// json.put("user", user);
				// sendJson(json);
				// Map temp = new HashMap();
				// temp.put("user", user);
				// JSONObject json = new JSONObject();
				// json.fromObject(temp);
				// try {
				// sendJson(json);
				// } catch (IOException e) {
				// e.printStackTrace();
				// }
			} else {
				getRequest().setAttribute("errorMSG", "密码错误");
				System.out.println("密码错误");
				toPageByForward("loginPage.jsp");
			}
		} else {
			getRequest().setAttribute("errorMSG", "用户不存在");
			toPageByForward("loginPage.jsp");
		}
	}
	
	public void getPer() throws IOException{
		// 获取当前登录用户的权限，并进行存放
		List<Permission> permissions = loginService.userPermission();
//		setAttributeToSession("permissions", permissions);
		Map<String, List<Permission>> perMap = new HashMap<String, List<Permission>>();
		List<Permission> per1 = new ArrayList<Permission>();
		List<Permission> per2 = new ArrayList<Permission>();
		List<Permission> per3 = new ArrayList<Permission>();
		List<Permission> per4 = new ArrayList<Permission>();
		for (int i = 0; i < permissions.size(); i++) {
			CommonUtil.log(permissions.get(i).getId());
			if(permissions.get(i).getParentId().equals("1")){
				permissions.get(i).setParentId(loginService.queryParentLable(permissions.get(i).getParentId()));
				per1.add(permissions.get(i));
				
			}else if(permissions.get(i).getParentId().equals("2")){
				permissions.get(i).setParentId(loginService.queryParentLable(permissions.get(i).getParentId()));
				per2.add(permissions.get(i));
			}else if(permissions.get(i).getParentId().equals("3")){
				permissions.get(i).setParentId(loginService.queryParentLable(permissions.get(i).getParentId()));
				per3.add(permissions.get(i));
			}else {
				permissions.get(i).setParentId(loginService.queryParentLable(permissions.get(i).getParentId()));
				per4.add(permissions.get(i));
			}
		}
		perMap.put("1",per1 );
		perMap.put("2",per2 );	
		perMap.put("3", per3);	
		perMap.put("4", per4);
		
		JSONArray jsonArray = JSONArray.fromObject(perMap);
		sendJsonArray(jsonArray);
//		JSONObject jsonObject = new JSONObject();
//		try {
//			jsonObject.put("per", permissions);
//			sendJson(jsonObject);
//		} catch (IOException e) {
//			CommonUtil.log("permission........."+e.toString());
//			e.printStackTrace();
//		}
//		CommonUtil.log("permission........."+permissions.size());
	}
	
	public void logOut() throws ServletException, IOException {
		// loginService.logOut();
		getSession().removeAttribute("users");
		getRequest().getSession().invalidate();
		toPageByForward("loginPage.jsp");
	}
}
