package com.gree.aftermarket.select.base;

import static org.hamcrest.CoreMatchers.nullValue;

import java.io.IOException;
import java.io.PrintWriter;

import javax.persistence.Id;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class WebBaseAction extends ActionSupport{
	/**
	 * 获取HttpServletRequest对象
	 */
	public HttpServletRequest getRequest(){
		return ServletActionContext.getRequest();
	}
	/**
	 * 获取HttpServletResponse对象
	 */
	public HttpServletResponse getResponse(){
		return ServletActionContext.getResponse();
	}
	/**
	 * 获取HttpSession对象
	 */
	public HttpSession getSession(){
		return getRequest().getSession();
	}
	/**
	 * 设置Object-->HttpServletRequest
	 */
	public void setAttribute(String key,Object value){
		if (getRequest()!=null) {
			getRequest().setAttribute(key, value);
		}
	}
	/**
	 * 获取HttpServletRequest中的object
	 */
	public Object getAttribute(String key){
		if(getRequest()!=null){
			return getRequest().getAttribute(key);
		}else{
			return null;
		}
	}
	/**
	 * 设置Object-->HttpSession中
	 */
	public void setAttributeToSession(String key,Object value){
		if(getSession()!=null){
			getSession().setAttribute(key, value);
		}
	}
	/**
	 * 获取HttpSeesion中Object
	 */
	public Object getAttrbuteFromSession(String key){
		if(getSession()!=null){
			return getSession().getAttribute(key);
		}else{
			return null;
		}
	}
	/**
	 * 往前端发送JSONObject json
	 * @throws IOException 
	 */
	public void sendJson(JSONObject json) throws IOException{
		getResponse().setContentType("text/html;charset=utf-8");
		getResponse().setHeader("Cache-Control", "no-cache");//取消浏览器缓存
		getResponse().setCharacterEncoding("utf-8");
		PrintWriter pw = getResponse().getWriter();
		pw.print(json);
		pw.flush();
		pw.close();
	}
	/**
	 * 往前端发送JSONObject json
	 * @throws IOException 
	 */
	public void sendJsonArray(JSONArray jsonArray) throws IOException{
		getResponse().setContentType("text/html;charset=utf-8");
		getResponse().setHeader("Cache-Control", "no-cache");//取消浏览器缓存
		getResponse().setCharacterEncoding("utf-8");
		PrintWriter pw = getResponse().getWriter();
		pw.print(jsonArray);
		pw.flush();
		pw.close();
	}
	/**
	 * 发送错误
	 * @throws IOException 
	 */
	public void sendErrorJson(String msg) throws IOException{
		BaseJsonBean jsonBean = new BaseJsonBean();
		jsonBean.setStatusCode(-1);
		jsonBean.setMsg(msg);
		JSONObject jsonObject = JSONObject.fromObject(jsonBean);
		sendJson(jsonObject);
	}
	/**
	 * Redirect 跳转
	 * @param page
	 * @throws IOException
	 */
	public void toPageByRedirect(String page) throws IOException{
		getResponse().sendRedirect(page);
	}
	/**
	 * forward 跳转
	 * @param page
	 * @throws ServletException
	 * @throws IOException
	 */
	public void toPageByForward(String page) throws ServletException, IOException{
		getRequest().getRequestDispatcher(page).forward(getRequest(), getResponse());
	}
}
