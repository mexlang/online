package com.echo.web.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.echo.web.model.bkuserManager;
import com.echo.web.serivce.BkUserService;
import com.echo.web.serivce.onStudentServise;



@Controller
@RequestMapping("/administrator")
public class AdministratorLoginControl {
	@Autowired
	private BkUserService bkUserService;
	@Autowired
	private onStudentServise onStudentServise;
	
	private Logger logger = LoggerFactory.getLogger(AdministratorLoginControl.class);
	
	
	@RequestMapping("/loginControl")
	public String loginControl(bkuserManager bkuserManager){
		logger.info("数据为:{}",bkuserManager);
		String resultLogin = bkUserService.loginJudge(bkuserManager);
		logger.info("---"+resultLogin);
		if(resultLogin.equals("1")&&!resultLogin.equals("")){
			return "/index";
		}
		return "账号密码登陆错误";
	}
	@RequestMapping("/loginStudent")
	public String loginStudent(@RequestParam("studentId") Integer studentId,@RequestParam("studentName") String studentName,@RequestParam("studentPasswd") String studentPasswd){
		logger.info("数据为:{},{},{}",studentId,studentName,studentPasswd);
		System.out.println(studentId+studentName+studentPasswd);
		
		String resultLogin = onStudentServise.loginJudge(studentId,studentName,studentPasswd);
		 if(resultLogin.equals("1")&&!resultLogin.equals("")){
				return "/public";
			
		 }
		 return "/question/tiku_xuanze";
	}
}
