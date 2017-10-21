package com.gree.aftermarket.select.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.gree.aftermarket.select.service.TestService;
import com.opensymphony.xwork2.ActionSupport;
@Controller
@Scope("prototype")
public class TestAction extends ActionSupport {
//	@Override
//	public String execute() throws Exception {
//		System.out.println("--testSuccess");
//		return "success";
//	}
	
	@Resource(name="testService")
    private TestService testService;  
    @Override
    public String execute() throws Exception {  
        System.out.println("---------->TestAction execute()");  
        testService.saveTwoUser();  
        return "success";  
    }
}
