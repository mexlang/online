package com.echo.web.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.echo.web.model.OnlineQuestions;
import com.echo.web.serivce.TeacherChoiceService;

@Controller
@RequestMapping("/teacherChoice")
public class TeacherChoiceControl {
	@Autowired
	private TeacherChoiceService teacherChoiceService;
	Map<String,Object> map = new  HashMap<String,Object>();
	private Logger logger = LoggerFactory.getLogger(TeacherChoiceControl.class);
	/**
	 * 选择题库保存
	 * @param jsonstr
	 * @return
	 */
	@RequestMapping(value="/increasePreserve")
	@ResponseBody
	public String increasePreserve(OnlineQuestions onlineQuestions,Model model){
		logger.info("对应的 数据:{}",onlineQuestions);
		OnlineQuestions userList = teacherChoiceService.choicePreserve(onlineQuestions);
		return String.valueOf(userList!=null?1:0);
	}
	/**
	 *  2.填空3 判断4简答 增加
	 * @param onlineQuestions
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/increaseDecide")
	@ResponseBody
	public String increaseDecide(OnlineQuestions onlineQuestions,Model model){
		logger.info("对应的 数据:{}",onlineQuestions);
		OnlineQuestions userList = teacherChoiceService.increaseDecide(onlineQuestions);
		return String.valueOf(userList!=null?1:0);
	}
	/**
	 * 设计题库保存
	 * @param jsonstr
	 * @return
	 */
	@RequestMapping(value="/increaseDesign")
	@ResponseBody
	public String increaseDesign(OnlineQuestions onlineQuestions,Model model){
		logger.info("对应的 数据:{}",onlineQuestions);
		OnlineQuestions userList = teacherChoiceService.designPreserve(onlineQuestions);
		return String.valueOf(userList!=null?1:0);
	}
	/**
	 * 题库删除
	 * @param id
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="/deleteChoiceSystem")
	@ResponseBody
	public String deleteChoiceSystem(@RequestParam Integer questionId) throws Exception{
		int result = teacherChoiceService.deletePreserve(questionId);
		logger.info("要删除的id:{}",questionId);
		return String.valueOf(result);
	}
	

	/**
	 * 选择题分页
	 * @param startPage
	 * @param pageSize
	 * @param model
	 * @return
	 */
	@RequestMapping("/findByChoicePage")
	public String findByChoicePage(@RequestParam(defaultValue="1") Integer startPage,  @RequestParam(defaultValue="10")Integer pageSize ,Model model){
		model.addAttribute("startPage",startPage);//开始页
		int count=teacherChoiceService.queryChoiceForPageCount();//当前数据总数量
		int totalPages=(count%pageSize==0?0:1)+(count/pageSize);
		model.addAttribute("totalPages",totalPages);//总页数
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("userNumber", count);
		logger.info(totalPages+"----一共有多少页数");
		return  "pages/question/tiku_xuanze";

	}
	
	/**
	 * 选择题内容
	 * @param startPage
	 * @param pageSize
	 * @param model
	 * @return
	 */
	@RequestMapping("/selectByAllChoice")
	public String selectByAllChoice(@RequestParam(defaultValue="1") Integer startPage,  @RequestParam(defaultValue="10")Integer pageSize ,Model model){
		
		int currentPage=(startPage-1)*pageSize;//通过java 程序 转换为 mysql 需要的数据格式
		List<OnlineQuestions> userList = teacherChoiceService.queryChoiceForPage(currentPage, pageSize);
		model.addAttribute("userList", userList);
		model.addAttribute("currentPage", currentPage);
		return  "/question/xuanzeContent";

	}
	/**
	 * 选择题修改查询
	 * @param questionId
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/findChoicebyId") 
	public String  findChoicebyId(Integer questionId,Model model) throws Exception{
		OnlineQuestions onlineQuestions = teacherChoiceService.queryChoiceManger(questionId);
		
		model.addAttribute("onlineQuestions", onlineQuestions);
	   return  "/question/xuanzeModify";
	}
	/**
	 * 选择题修改
	 * @param onlineQuestions
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/updateChoiceSystem") 
	@ResponseBody
	public String  updateUserSystem(OnlineQuestions onlineQuestions) throws Exception{
	    int count = teacherChoiceService.updateByPrimaryKeySelective(onlineQuestions);
	    logger.info("修改的数量是:{}",count);
	    return  String.valueOf(count);
	}
	/**
	 * 判断题页数查询
	 * @param startPage
	 * @param pageSize
	 * @param model
	 * @return
	 */
	@RequestMapping("/findByDecidePage")
	public String findByDecidePage(@RequestParam(defaultValue="1") Integer startPage,  @RequestParam(defaultValue="10")Integer pageSize ,Model model){
		model.addAttribute("startPage",startPage);//开始页
		int count=teacherChoiceService.queryDecideForPageCount();//当前数据总数量
		int totalPages=(count%pageSize==0?0:1)+(count/pageSize);
		model.addAttribute("totalPages",totalPages);//总页数
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("userNumber", count);
		logger.info(totalPages+"----一共有多少页数");
		return  "/question/tiku_panduan";

	}
	/**
	 * 判断题内容
	 * @param startPage
	 * @param pageSize
	 * @param model
	 * @return
	 */
	@RequestMapping("/selectByAllDecide")
	public String selectByAllDecide(@RequestParam(defaultValue="1") Integer startPage,  @RequestParam(defaultValue="10")Integer pageSize ,Model model){
		
		int currentPage=(startPage-1)*pageSize;//通过java 程序 转换为 mysql 需要的数据格式
		List<OnlineQuestions> userList = teacherChoiceService.queryDecideForPage(currentPage, pageSize);
		model.addAttribute("userList", userList);
		model.addAttribute("currentPage", currentPage);
		return  "/question/panduanContent";

	}
	/**
	 * 判断题修改查询
	 * @param questionId
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/findDecidebyId") 
	public String  findDecidebyId(Integer questionId,Model model) throws Exception{
		OnlineQuestions onlineQuestions = teacherChoiceService.queryDecideManger(questionId);
		model.addAttribute("onlineQuestions", onlineQuestions);
	   return  "/question/panduanModify";
	}
	/**
	 * 判断,简答题修改
	 * @param onlineQuestions
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/updateDecideSystem") 
	@ResponseBody
	public String  updateDecideSystem(@ModelAttribute OnlineQuestions onlineQuestions) throws Exception{
	    int count = teacherChoiceService.updateByDecideSelective(onlineQuestions);
	    logger.info("要修改的内容是:{}",onlineQuestions);
	    logger.info("修改的数量是:{}",count);
	    return  String.valueOf(count);
	}
	
	/**
	 * 填空题页数查询
	 * @param startPage
	 * @param pageSize
	 * @param model
	 * @return
	 */
	@RequestMapping("/findByBlankPage")
	public String findByBlankPage(@RequestParam(defaultValue="1") Integer startPage,  @RequestParam(defaultValue="10")Integer pageSize ,Model model){
		model.addAttribute("startPage",startPage);//开始页
		int count=teacherChoiceService.queryBlankForPageCount();//当前数据总数量
		int totalPages=(count%pageSize==0?0:1)+(count/pageSize);
		model.addAttribute("totalPages",totalPages);//总页数
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("userNumber", count);
		logger.info(totalPages+"----一共有多少页数");
		return  "/question/tiku_tiankong";

	}
	/**
	 * 填空题内容
	 * @param startPage
	 * @param pageSize
	 * @param model
	 * @return
	 */
	@RequestMapping("/selectByAllBlank")
	public String selectByAllBlank(@RequestParam(defaultValue="1") Integer startPage,  @RequestParam(defaultValue="10")Integer pageSize ,Model model){
		
		int currentPage=(startPage-1)*pageSize;//通过java 程序 转换为 mysql 需要的数据格式
		List<OnlineQuestions> userList = teacherChoiceService.queryBlankForPage(currentPage, pageSize);
		model.addAttribute("userList", userList);
		model.addAttribute("currentPage", currentPage);
		return  "/question/tiankongContent";

	}
	/**
	 * 填空题修改查询
	 * @param questionId
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/findBlankbyId") 
	public String  findBlankbyId(Integer questionId,Model model) throws Exception{
		OnlineQuestions onlineQuestions = teacherChoiceService.queryDecideManger(questionId);
		model.addAttribute("onlineQuestions", onlineQuestions);
	   return  "/question/tiankongModify";
	}
	
	
	
	/**
	 * 简答题页数查询
	 * @param startPage
	 * @param pageSize
	 * @param model
	 * @return
	 */
	@RequestMapping("/findBySimplePage")
	public String findBySimplePage(@RequestParam(defaultValue="1") Integer startPage,  @RequestParam(defaultValue="10")Integer pageSize ,Model model){
		model.addAttribute("startPage",startPage);//开始页
		int count=teacherChoiceService.querySimpleForPageCount();//当前数据总数量
		int totalPages=(count%pageSize==0?0:1)+(count/pageSize);
		model.addAttribute("totalPages",totalPages);//总页数
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("userNumber", count);
		logger.info(totalPages+"----一共有多少页数");
		return  "/question/tiku_jianda";

	}
	/**
	 * 简答题内容
	 * @param startPage
	 * @param pageSize
	 * @param model
	 * @return
	 */
	@RequestMapping("/selectByAllSimple")
	public String selectByAllSimple(@RequestParam(defaultValue="1") Integer startPage,  @RequestParam(defaultValue="10")Integer pageSize ,Model model){
		
		int currentPage=(startPage-1)*pageSize;//通过java 程序 转换为 mysql 需要的数据格式
		List<OnlineQuestions> userList = teacherChoiceService.querySimpleForPage(currentPage, pageSize);
		model.addAttribute("userList", userList);
		model.addAttribute("currentPage", currentPage);
		return  "/question/jiandaContent";

	}
	/**
	 * 简答题修改查询
	 * @param questionId
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/findSimplebyId") 
	public String  findSimplebyId(Integer questionId,Model model) throws Exception{
		OnlineQuestions onlineQuestions = teacherChoiceService.queryDecideManger(questionId);
		model.addAttribute("onlineQuestions", onlineQuestions);
	   return  "/question/jiandaModify";
	}
	
	
	
	/**
	 * 设计题分页
	 * @param startPage
	 * @param pageSize
	 * @param model
	 * @return
	 */
	@RequestMapping("/findByDesignPage")
	public String findByDesignPage(@RequestParam(defaultValue="1") Integer startPage,  @RequestParam(defaultValue="10")Integer pageSize ,Model model){
		model.addAttribute("startPage",startPage);//开始页
		int count=teacherChoiceService.queryDesignForPageCount();//当前数据总数量
		int totalPages=(count%pageSize==0?0:1)+(count/pageSize);
		model.addAttribute("totalPages",totalPages);//总页数
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("userNumber", count);
		logger.info(totalPages+"----一共有多少页数");
		return  "/question/tiku_sheji";

	}
	
	/**
	 * 设计题内容
	 * @param startPage
	 * @param pageSize
	 * @param model
	 * @return
	 */
	@RequestMapping("/selectByAllDesign")
	public String selectByAllDesign(@RequestParam(defaultValue="1") Integer startPage,  @RequestParam(defaultValue="10")Integer pageSize ,Model model){
		
		int currentPage=(startPage-1)*pageSize;//通过java 程序 转换为 mysql 需要的数据格式
		List<OnlineQuestions> userList = teacherChoiceService.queryDesignForPage(currentPage, pageSize);
		model.addAttribute("userList", userList);
		model.addAttribute("currentPage", currentPage);
		return  "/question/shejiContent";

	}
	/**
	 * 设计题修改查询
	 * @param questionId
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/findDesignbyId") 
	public String  findDesignbyId(Integer questionId,Model model) throws Exception{
		OnlineQuestions onlineQuestions = teacherChoiceService.queryDesignManger(questionId);
		model.addAttribute("onlineQuestions", onlineQuestions);
	   return  "/question/shejiModify";
	}
	/**
	 * 设计题修改
	 * @param onlineQuestions
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/updateDesignSystem") 
	@ResponseBody
	public String  updateDesignSystem(OnlineQuestions onlineQuestions) throws Exception{
	    int count = teacherChoiceService.updateByDesignKeySelective(onlineQuestions);
	    logger.info("修改的数量是:{}",onlineQuestions);
	    return  String.valueOf(count);
	}
	
	
	
	
	
	
	
}
