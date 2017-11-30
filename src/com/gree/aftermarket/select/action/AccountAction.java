package com.gree.aftermarket.select.action;

import javax.annotation.Resource;

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
	public void accountList() {
		// TODO Auto-generated method stub
		System.out.println("accountList");
		User user = (User) accountService.userList(CommonUtil.userid);
	}
}
