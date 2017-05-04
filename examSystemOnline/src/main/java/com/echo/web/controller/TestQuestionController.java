package com.echo.web.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import com.echo.web.serivce.OnlineQuestionService;
import com.echo.web.serivce.TeacherChoiceService;
import com.google.gson.Gson;



/****
 * 
 * 对试题的操作控制
 * 
 * @author mexlang 
 *
 */

@Controller
@RequestMapping(value={"/question"}) //声明位置在类上  圈定一个功能模块
public class TestQuestionController  {
	
	/**
	 * 通过类选择的 依赖注入的
	 */
	@Autowired
	private OnlineQuestionService questionService;
	@Autowired
	private OnlineQuestions onlineQuestions;
	@Autowired
	private TeacherChoiceService teacherChoiceService;
	@Autowired  
	private HttpSession session; 
	
	
	Map<String,Object> map = new  HashMap<String,Object>();
	private Logger  logger= LoggerFactory.getLogger(TestQuestionController.class);
	
	/***
	 * 组卷完成之后返回所组的卷子
	 * 
	 * 根据paperId 查询 对应的题，返回list
	 * 试题类型1选择提 2 填空 3 判断4简答5 算法设计
	 */
	@RequestMapping(value="queryQuestionsToShow",produces="text/plain;charset=UTF-8;")
	public String queryQuestionsToShow (@RequestParam(defaultValue="1") Integer type,Model model) {

		Integer paperId = (Integer) session.getAttribute("paperId");
		logger.info(paperId+"");
		type = 1;
		List<OnlineQuestions> xuanzeList = questionService.queryOnlineQuestionsToShow(type, paperId);
		
		for (OnlineQuestions onlineQuestions : xuanzeList) {
			
		//分割选择题选项
		String option = onlineQuestions.getQuestionOption();
		String[] options = option.split("@@");
		onlineQuestions.setOptionA(options[0]);
		onlineQuestions.setOptionB(options[1]);
		onlineQuestions.setOptionC(options[2]);
		onlineQuestions.setOptionD(options[3]);
		
		}
		
		model.addAttribute("xuanzeList", xuanzeList);  //查询的选择题
		type = 2;
		List<OnlineQuestions> tiankongList = questionService.queryOnlineQuestionsToShow(type, paperId);
		model.addAttribute("tiankongList", tiankongList);	//填空题	
		type = 3;
		List<OnlineQuestions> panduanList = questionService.queryOnlineQuestionsToShow(type, paperId);
		model.addAttribute("panduanList", panduanList);	//判断题		
		type = 4;
		List<OnlineQuestions> jiandaList = questionService.queryOnlineQuestionsToShow(type, paperId);
		model.addAttribute("jiandaList", jiandaList);		//简答题
		type = 5;
		List<OnlineQuestions> shejiList = questionService.queryOnlineQuestionsToShow(type, paperId);
		model.addAttribute("shejiList", shejiList);		//算法设计
		logger.info("queryQuestionsToShow");
		return "pages/TestpaperInsert";
	}
	/**
	 * 
	 * 根据post参数id查询返回试卷
	 * 试卷管理页面
	 * @param paperId
	 * @param model
	 * @return
	 */
	@RequestMapping(value="queryShowtestpaper",produces="text/plain;charset=UTF-8;")
	public String queryShowtestpaper (@RequestParam("paperId")Integer paperId,Model model) {

		logger.info(paperId+"");
		Integer type = 1;
		List<OnlineQuestions> xuanzeList = questionService.queryOnlineQuestionsToShow(type, paperId);
		
		for (OnlineQuestions onlineQuestions : xuanzeList) {
			
		//分割选择题选项
		String option = onlineQuestions.getQuestionOption();
		String[] options = option.split("@@");
		onlineQuestions.setOptionA(options[0]);
		onlineQuestions.setOptionB(options[1]);
		onlineQuestions.setOptionC(options[2]);
		onlineQuestions.setOptionD(options[3]);
		}
		model.addAttribute("xuanzeList", xuanzeList);  //查询的选择题
		type = 2;
		List<OnlineQuestions> tiankongList = questionService.queryOnlineQuestionsToShow(type, paperId);
		model.addAttribute("tiankongList", tiankongList);	//填空题	
		type = 3;
		List<OnlineQuestions> panduanList = questionService.queryOnlineQuestionsToShow(type, paperId);
		model.addAttribute("panduanList", panduanList);	//判断题		
		type = 4;
		List<OnlineQuestions> jiandaList = questionService.queryOnlineQuestionsToShow(type, paperId);
		model.addAttribute("jiandaList", jiandaList);		//简答题
		type = 5;
		List<OnlineQuestions> shejiList = questionService.queryOnlineQuestionsToShow(type, paperId);
		model.addAttribute("shejiList", shejiList);		//算法设计
		logger.info("queryQuestionsToShow");
		return "pages/showTestpaper";
	}
	
	/**
	 * 
	 *id查询返回试卷
	 * 试卷审核页面
	 * @param paperId
	 * @param model
	 * @return
	 */
	@RequestMapping(value="queryShowtestpaperForAdmin")
	public String queryShowtestpaperForAdmin (@RequestParam("paperId")Integer paperId,Model model) {

		logger.info(paperId+"");
		Integer type = 1;
		List<OnlineQuestions> xuanzeList = questionService.queryOnlineQuestionsToShow(type, paperId);
		
		for (OnlineQuestions onlineQuestions : xuanzeList) {
			
		//分割选择题选项
		String option = onlineQuestions.getQuestionOption();
		String[] options = option.split("@@");
		onlineQuestions.setOptionA(options[0]);
		onlineQuestions.setOptionB(options[1]);
		onlineQuestions.setOptionC(options[2]);
		onlineQuestions.setOptionD(options[3]);
		}
		model.addAttribute("xuanzeList", xuanzeList);  //查询的选择题
		type = 2;
		List<OnlineQuestions> tiankongList = questionService.queryOnlineQuestionsToShow(type, paperId);
		model.addAttribute("tiankongList", tiankongList);	//填空题	
		type = 3;
		List<OnlineQuestions> panduanList = questionService.queryOnlineQuestionsToShow(type, paperId);
		model.addAttribute("panduanList", panduanList);	//判断题		
		type = 4;
		List<OnlineQuestions> jiandaList = questionService.queryOnlineQuestionsToShow(type, paperId);
		model.addAttribute("jiandaList", jiandaList);		//简答题
		type = 5;
		List<OnlineQuestions> shejiList = questionService.queryOnlineQuestionsToShow(type, paperId);
		model.addAttribute("shejiList", shejiList);		//算法设计
		model.addAttribute("paperId", paperId);
		logger.info("queryQuestionsToShow");
		return "pages/guanliyuan/looktest";
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
		return  "html/shoushouzu";
	}
	
	/**
	 * 返回选择题内容
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
		return  "pages/xuanzeAdd";

	}
	/**
	 * 判断题分页
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
		return  "html/shoushouzu";

	}
	/**
	 * 判断题内容
	 * @param startPage
	 * @param pageSize
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/selectByAllDecide",produces="text/plain;charset=UTF-8;")
	public String selectByAllDecide(@RequestParam(defaultValue="1") Integer startPage,  @RequestParam(defaultValue="10")Integer pageSize ,Model model){
		
		int currentPage=(startPage-1)*pageSize;//通过java 程序 转换为 mysql 需要的数据格式
		List<OnlineQuestions> userList = teacherChoiceService.queryDecideForPage(currentPage, pageSize);
		model.addAttribute("userList", userList);
		model.addAttribute("currentPage", currentPage);
		return  "pages/panduanAdd";

	}
	/**
	 * 填空题分页
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
		return  "html/shoushouzu";

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
		return  "pages/tiankongAdd";

	}
	/**
	 * 简答题分页
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
		return  "html/shoushouzu";

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
		return   "pages/jiandaAdd";

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
		return  "html/shoushouzu";

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
		return   "pages/shejiAdd";

	}
	
	
	
	/***
	 * 手动组卷的时候
	 * 动态更新已添加的试题数
	 * 
	 * 根据paperId 查询 对应的题，返回list
	 * 试题类型1选择提 2 填空 3 判断4简答5 算法设计
	 */
	@RequestMapping(value="queryQuestionsNumber",produces="text/plain;charset=UTF-8;")
	@ResponseBody
	public String queryQuestionsNumber (@RequestParam(defaultValue="1") Integer type,Model model) {

		Integer paperId = (Integer) session.getAttribute("paperId");
		logger.info(paperId+"");
		type = 1;
		List<OnlineQuestions> xuanzeList = questionService.queryOnlineQuestionsToShow(type, paperId);
		int xuanzeNumber = xuanzeList.size();
		model.addAttribute("xuanzeNumber", xuanzeNumber);  //查询的选择题数目
		type = 2;
		List<OnlineQuestions> tiankongList = questionService.queryOnlineQuestionsToShow(type, paperId);
		int tiankongNum = tiankongList.size();
		model.addAttribute("tiankongNumber", tiankongNum);	//填空题	
		type = 3;
		List<OnlineQuestions> panduanList = questionService.queryOnlineQuestionsToShow(type, paperId);
		int panduanNum = panduanList.size();
		model.addAttribute("panduanNumber", panduanNum);	//判断题		
		type = 4;
		List<OnlineQuestions> jiandaList = questionService.queryOnlineQuestionsToShow(type, paperId);
		int jiandaNum = jiandaList.size();
		model.addAttribute("jiandaNumber", jiandaNum);		//简答题
		type = 5;
		List<OnlineQuestions> shejiList = questionService.queryOnlineQuestionsToShow(type, paperId);
		int shejiNum = shejiList.size();
		model.addAttribute("shejiList", shejiNum);		//算法设计
		logger.info("queryQuestionsToShowNum");
		return "pages/TestpaperInsert";
	}
	
}