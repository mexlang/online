package com.echo.web.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.echo.web.model.bkuserManager;
import com.echo.web.serivce.BkUserService;


@Controller
@RequestMapping("/bkuser")
public class BkUserControl {
	@Autowired
	private BkUserService bkUserService;
	/**
	 * 管理员查询
	 * @param startId
	 * @param page
	 * @param model
	 * @return
	 */
	@RequestMapping("/selectBkUser")
	public String selectBkUser(Integer startId,Integer page,Model model){
		List<BkUserService> bkUserPage = bkUserService.selectBkUser(startId,page);
		model.addAttribute("bkUserPage",bkUserPage);
		return "/admin/sign";
	
	}
	@RequestMapping("/saveBkUser")
	public String saveBkUser(bkuserManager bkuserManager){
		bkUserService.saveBkUser(bkuserManager);
		return "";
	}
	@RequestMapping("/updateBkUser")
	public String updateBkUser(bkuserManager bkuserManager){
		bkUserService.updateBkUser(bkuserManager);
		return "";
	}
}
