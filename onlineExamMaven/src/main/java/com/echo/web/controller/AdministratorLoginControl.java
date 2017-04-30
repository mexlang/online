package com.echo.web.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	@RequestMapping(value="/loginStudent",method=RequestMethod.POST)
	public String loginStudent(Model model,HttpServletRequest request,Integer studentId,String studentDesc,String studentpassword){
		String mesg = null;
		if(("学生").equals(studentDesc)){
			String resultLogin = onStudentServise.loginJudge(studentId,studentpassword);
			if(resultLogin.equals("1")){
				HttpSession session = request.getSession();
				session.setAttribute("studentId", studentId);
				return "/pages/student/xsdlndex";
			}else if(resultLogin.equals("0")){
				mesg = "密码不正确";
				model.addAttribute("mesg",mesg);
				return "/login";
			}else if(resultLogin.equals("2")){
				mesg = "学生号错误";
				model.addAttribute("mesg",mesg);
				return "/login";
			}
		}else{
			return "/login";
		}
		return "/login";
	}
}
