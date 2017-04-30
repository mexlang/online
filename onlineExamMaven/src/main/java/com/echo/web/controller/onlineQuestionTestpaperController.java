package com.echo.web.controller;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;

import com.echo.web.model.onlineExaminInfor;
import com.echo.web.model.onlineQuestionsTestpaper;
import com.echo.web.model.onlineTestpaper;
import com.echo.web.serivce.OnlineTestpaperService;
import com.echo.web.serivce.onlineExaminInforService;
import com.echo.web.serivce.onlineQuestionTestpapaerService;
import com.echo.web.util.common.Transtime;
import com.google.gson.Gson;
import com.mysql.fabric.Response;



/****
 * 
 * 对试卷的操作控制
 * 
 * @author mexlang 
 *
 */

@Controller
@RequestMapping(value={"/TestPaper"}) //声明位置在类上  圈定一个功能模块
public class onlineQuestionTestpaperController  {
	
	/**
	 * 通过类选择的 依赖注入的
	 */
	@Autowired
	private onlineQuestionTestpapaerService testpaperService;
	private Logger  logger= LoggerFactory.getLogger(onlineQuestionTestpaperController.class);
	@Autowired  
	private HttpSession session;  
	@Autowired  
	private HttpServletRequest request;
	@Autowired
	private onlineExaminInforService examInfoService;
	@Autowired
	private onlineExaminInfor examInfo;
	private onlineQuestionsTestpaper testpaper;
	@Autowired
	private OnlineTestpaperService testpaperBaseService;
	
	
	
	/***
	 * 存储试题
	 */
	@RequestMapping(value="goSaveTestpaper")
	@ResponseBody
	public int goSaveTestpaper (onlineQuestionsTestpaper testpaper, Model model){
		onlineQuestionsTestpaper count = testpaperService.insertOnlineQuestionTestpaper(testpaper);
		return (count != null?1:0);
	} 
	
	/**
	 * 从返回的试卷list中选择合适的试卷组织考试
	 * 保存试卷Id到online_testpaper 表中(session)
	 * @return
	 */
	@RequestMapping(value="insertPaperIdIntoOnlineTestpaper",produces="text/plain;charset=UTF-8;")
	@ResponseBody
	public String insertPaperIdIntoOnlineTestpaper(@RequestParam()Integer paperId) {
		session.setAttribute("paperIdSelect", paperId);   //暂时将试卷Id储存session中
		logger.info("选择的试卷id为：" + paperId);
		HashMap<String, String> map = new HashMap<String,String>();
		if(paperId==null) {
		map.put("message", "请稍后重试！");
		}					            //返回提示消息 
		map.put("message", "本次考试试卷已更新！");           
		return new Gson().toJson(map);
	}
	/**
	 * 暂时保存classId
	 * @param classId
	 * @return
	 */
	@RequestMapping(value="saveTestpaperAndClass",produces="text/plain;charset=UTF-8;")
	@ResponseBody
	public String saveTestpaperAndClass(@RequestParam() Integer classId) {
		session.setAttribute("classIdSelect", classId);    //暂时存到session中
		logger.info("选择的试卷id为：" + classId);
		HashMap<String, String> map = new HashMap<String,String>();
		if(classId==null) {
		map.put("message", "请稍后重试！");
		}					            //返回提示消息 
		map.put("message", "考试信息已更新！");           
		return new Gson().toJson(map);
	}
	/***
	 * 保存试题到试卷中
	 * 试题筐的功能
	 * @param questionId
	 * @return
	 */
	@RequestMapping(value="/insertQuestionIntoTestPaper", produces = "text/html;charset=UTF-8") //CRUD
	@ResponseBody
	public String   insertQuestionIntoTestPaper(@RequestParam Integer questionId,Model model){
		Map<String,Object> map = new  HashMap<String,Object>();
		Integer paperId =(Integer) request.getSession().getAttribute("paperId");
		logger.info("获取到session中的papaerId: "+paperId);
			testpaper = new onlineQuestionsTestpaper();
			testpaper.setPaperId(paperId);
			testpaper.setQuestionId(questionId);
			onlineQuestionsTestpaper count = testpaperService.insertOnlineQuestionTestpaper(testpaper);
			if(count!=null){
				 map.put("提示：", "试题更新成功！");
				 logger.info("试题更新成功");
			}else{
				 map.put("提示：", "更新失败，请稍后重试！");
			}
	   return new Gson().toJson(map);
	}
	/**
	 * 试卷头信息保存
	 * 管理页面添加考试
	 * @param testpaper
	 * @return
	 */
	@RequestMapping("insertTestpaperTitleInfo")
	public String insertTestpaperTitleInfo (onlineTestpaper testpaper,Model model) {
		if(testpaper.getEndTime1() != "" & testpaper.getEndTime2() != "")
		testpaper.setPagerEndtime(new Transtime().transformDate(testpaper.getEndTime1(), testpaper.getEndTime2()));
		if(testpaper.getStartTime1() != "" & testpaper.getStartTime2() != "")
		testpaper.setPagerStarttime(new Transtime().transformDate(testpaper.getStartTime1(), testpaper.getStartTime2()));
		
		
		Integer paperId = (Integer) session.getAttribute("paperIdSelect");
		Integer classId = (Integer) session.getAttribute("classIdSelect");
		if (paperId != null)
		testpaper.setPaperId(paperId);
		if (classId != null)
		testpaper.setTeacherId(classId);  //暂用老师id 代替班级Id
		
		
		onlineTestpaper result = testpaperBaseService.insertonlineTestpaper(testpaper);
		model.addAttribute("result", result);
		
		return "html/shijuanguanli_S";
	}
	/**
	 * 试卷头信息查询
	 * 管理页面添加考试
	 * @param testpaper
	 * @return
	 */
	@RequestMapping("queryTestpaperTitleInfo")
	public String queryTestpaperTitleInfo (@RequestParam() Integer paperId,Model model) {
		onlineTestpaper result = testpaperBaseService.queryTestpaper(paperId);
		model.addAttribute("result", result);
		return "html/shijuanguanli_S";
	}
	
	/**
	 * 更新试卷管理信息的回显
	 */
	@RequestMapping("toupdataTestpaperTitleInfo")
	public String toupdataTestpaperTitleInfo (@RequestParam() Integer paperId,Model model) {
		onlineTestpaper result = testpaperBaseService.queryTestpaper(paperId);
		model.addAttribute("result", result);
		return "pages/updatainfo";
	}
	/**
	 * 更新试卷管理的信息
	 * @param testpaper
	 * @param model
	 * @return
	 */
	@RequestMapping("updateTestpaperTitleInfo")
	public String updateTestpaperTitleInfo (onlineTestpaper testpaper,Model model) {
		if(testpaper.getEndTime1() != "" & testpaper.getEndTime2() != "")
		testpaper.setPagerEndtime(new Transtime().transformDate(testpaper.getEndTime1(), testpaper.getEndTime2()));
		if(testpaper.getStartTime1() != "" & testpaper.getStartTime2() != "")
		testpaper.setPagerStarttime(new Transtime().transformDate(testpaper.getStartTime1(), testpaper.getStartTime2()));
		Integer paperId = (Integer) session.getAttribute("paperIdSelect");
		Integer classId = (Integer) session.getAttribute("classIdSelect");
		if (paperId != null)
		testpaper.setPaperId(paperId);
		if (classId != null)
		testpaper.setTeacherId(classId);  //暂用老师id 代替班级Id
		boolean res = testpaperBaseService.updataTestpaper(testpaper);
		logger.info("考试信息更新："+res);
		onlineTestpaper paperResult = null;
		if (res) {
		paperResult  = testpaperBaseService.queryTestpaper(testpaper.getPaperId());
		model.addAttribute("result", paperResult);
		}
		return "html/shijuanguanli_S";
	}
	/**
	 * 返回所有考试信息
	 * 试卷管理的初始列表
	 * @param model
	 * @return
	 */
	@RequestMapping("queryAllTestPaperTitleInfo")
	public String queryAllTestPaperTitleInfo (Model model) {
		List<onlineTestpaper> result = testpaperBaseService.queryAllTestpaper();
		model.addAttribute("resultList", result);
		return "/pages/classListAdd";
	}
	/**
	 * 
	 * 删除试卷头信息
	 * @param model
	 * @return
	 */
	@RequestMapping("deleteTestPaperTitleInfo")
	@ResponseBody
	public String deleteTestPaperTitleInfo (Integer paperId,Model model) {
		Integer result = testpaperBaseService.deleteTestpaper(paperId);
		return "result";
	}
	
	/**
	 * 查询所有的试卷编号 
	 * 返回一个表格，供组卷使用
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("queryonlineTestpaperByGroup")
	public String queryonlineTestpaperByGroup(Model model) throws Exception {
		List<Integer> result = testpaperService.queryonlineQuestionsTestpaperByGroup();
		model.addAttribute("resultList", result);
//		new Thread().sleep(50000);
		return "pages/listTablePaperId";
	}
	/***
	 * 
	 * 手动组卷的入口
	 * @param testpaperBase
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value="InsertTestpaperWithHand")
	public String InsertTestpaperWithHand(onlineTestpaper testpaperBase,HttpServletRequest request,Model model){
		String testType = request.getParameter("TestType");  //考试类型
		testpaperBase.setCreateTime(new Date());
//		logger.info("考试名称："+testpaperBase.getPagerName());
		onlineTestpaper count = testpaperBaseService.insertonlineTestpaper(testpaperBase);
		session.setAttribute("paperId", count.getPaperId());
		logger.info("保存到题库中的paperd:"+ count.getPaperId());
		return "html/shouzu";
	}
	
	@RequestMapping(value="InsertTestpaperWithAuto")
	public String InsertTestpaperWithAuto(onlineTestpaper testpaperBase,HttpServletRequest request,Model model){
		String testType = request.getParameter("TestType");  //考试类型
		testpaperBase.setCreateTime(new Date());
//		logger.info("考试名称："+testpaperBase.getPagerName());
		onlineTestpaper count = testpaperBaseService.insertonlineTestpaper(testpaperBase);
		session.setAttribute("paperId", count.getPaperId());
		logger.info("保存到题库中的paperd:"+ count.getPaperId());
		return "html/zizu";
		
	}
	/**

	 * 自动组卷

	 * @param text_num1

	 * @param text_num2

	 * @param text_num3

	 * @param text_num4

	 * @param text_num5

	 * @param paperId

	 * @return

	 */
	@RequestMapping(value="AutomaticTestPaper")
	@ResponseBody
	public String AutomaticTestPaper(Integer text_num1,Integer text_num2,Integer text_num3,Integer text_num4,Integer text_num5,Integer paperId){
		int result = testpaperService.automaticTestPaper(text_num1,text_num2,text_num3,text_num4,text_num5,paperId);
		return String.valueOf(result);
	}
	
	/**
	 * 返回所有考试信息
	 * 管理员端的试卷审核列表
	 * @param model
	 * @return
	 */
	@RequestMapping("queryAllTestPaperTitleInfoForAdmin")
	public String queryAllTestPaperTitleInfoForAdmin (Model model) {
		List<onlineTestpaper> result = testpaperBaseService.queryAllTestpaper();
		model.addAttribute("resultList", result);
		return "pages/guanliyuan/examination";
	}
	
	/***
	 * 
	 * 审核考试
	 * @param testpaper
	 * @param model
	 * @return
	 */
	@RequestMapping("updataTestpaperTitleInfo")
	public String updataTestpaperTitleInfo (onlineTestpaper testpaper) {
		boolean result = testpaperBaseService.updataTestpaper(testpaper);
		logger.info("更新考试信息："+ result);
		return "redirect:queryAllTestPaperTitleInfoForAdmin";
	}

}
