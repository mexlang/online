package com.echo.web.controller;


import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.echo.web.model.OnlineStudent;
import com.echo.web.serivce.onStudentServise;


@Controller
@RequestMapping("/crudStudent")
public class AdministratorUSDBControl {

	private Logger logger = LoggerFactory.getLogger(AdministratorUSDBControl.class);
	@Autowired
	private onStudentServise onStudentServise;
	Map<String,Object> map = new HashMap();

	@RequestMapping("/sStudent")
	public String selectStudent(OnlineStudent onlineStudent,Model model){
		OnlineStudent studentInformation = onStudentServise.selectStudent(onlineStudent.getStudentId());
		model.addAttribute("studentInfor",studentInformation);
		return "/UDBC/updateStudnet";//修改学生信息页面
	}
	@RequestMapping("/uStudent")
	public String uStudent(OnlineStudent onlineStudent){
		int result = onStudentServise.updateByPrimaryKey(onlineStudent);
		if(result==1){
			return"";//学生信息页面
		}

		return "系统出现故障！";

	}
	@RequestMapping("/cStudent")
	public String cStudent(OnlineStudent onlineStudent){
		int result = onStudentServise.insert(onlineStudent);
		if(result==1){
			return"";//学生信息页面
		}

		return "系统出现故障！";
	}
	@RequestMapping("/dStudent")
	public String dStudent(OnlineStudent onlineStudent){
		int result = onStudentServise.deleteByPrimaryKey(onlineStudent);
		if(result==1){
			return"";//学生信息页面
		}

		return "系统出现故障！";
	}



}



