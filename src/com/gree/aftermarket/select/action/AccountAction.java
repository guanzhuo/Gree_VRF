package com.gree.aftermarket.select.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.gree.aftermarket.select.base.WebBaseAction;
import com.gree.aftermarket.select.bean.User;
import com.gree.aftermarket.select.common.CommonUtil;
import com.gree.aftermarket.select.service.AccountService;
@Controller
@Scope("prototype")
public class AccountAction extends WebBaseAction{
	//查询账号列表
	@Resource(name = "accountService")
	private AccountService accountService;
	public void accountList() throws IOException {
		// TODO Auto-generated method stub
		List<User> user = accountService.userList(CommonUtil.userid);
		JSONObject object = new JSONObject();
		object.put("userdata", user);
		if(user.size()>0){
			sendJson(object);
		}else{
			CommonUtil.log("无数据");
			sendErrorJson("No Data...");
		}
	}
}
