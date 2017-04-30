package com.echo.web.controller.students;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.echo.web.model.OnlineClass;
import com.echo.web.model.OnlineQuestions;
import com.echo.web.model.OnlineStudent;
import com.echo.web.model.onlineTestpaper;
import com.echo.web.serivce.StudentExamService;
import com.echo.web.serivce.StudentPapersService;

@Controller
@RequestMapping("/studentPaper")
public class StudentPapersControl {
	
	@Autowired
	private StudentPapersService papersService;
	@Autowired
	private StudentExamService studentExamService;
	
	private Logger  logger= LoggerFactory.getLogger(StudentPapersControl.class);
	/**
	 * 保存选择
	 * @param paperId
	 * @param questionId
	 * @param value
	 * @param request
	 */
	@RequestMapping("/stuentwritePaper")
	private void stuentwritePaper(Integer paperId,Integer questionId ,String value,HttpServletRequest request){
		HttpSession session = request.getSession();
		Integer studentid = (Integer) session.getAttribute("studentId");
		papersService.stuentwritePaper(studentid,paperId,questionId,value);
	}
	
	/**
	 * 保存填空题
	 * @param tiankonglib
	 */
	@RequestMapping("/stuenttinakongAnswer")
	@ResponseBody
	private String stuenttinakongAnswer(HttpServletRequest request,String tiankong,Integer tiankongid,Integer paperId){
		
		HttpSession session = request.getSession();
		Integer studentid = (Integer) session.getAttribute("studentId");
		
		int result = papersService.stuenttinakongAnswer(studentid,paperId,tiankongid,tiankong);
		return String.valueOf(result);
	}
	/**
	 * 简答题保存
	 * @param request
	 * @param tiankong
	 * @param tiankongid
	 * @param paperId
	 * @return 
	 */
	@RequestMapping("/stuentjiandaAnswer")
	@ResponseBody
	private String stuentjiandaAnswer(HttpServletRequest request,String jianda,Integer jiandaid,Integer paperId){
		HttpSession session = request.getSession();
		Integer studentid = (Integer) session.getAttribute("studentId");
		int result = papersService.stuenttinakongAnswer(studentid,paperId,jiandaid,jianda);
		return String.valueOf(result);
	}
	/**
	 * 设计题保存
	 * @param request
	 * @param jianda
	 * @param jiandaid
	 * @param paperId
	 */
	@RequestMapping("/stuentshejiAnswer")
	private void stuentshejiAnswer(HttpServletRequest request,String sheji,Integer shejiid,String file ,Integer paperId){
		HttpSession session = request.getSession();
		Integer studentid = (Integer) session.getAttribute("studentId");
		String shejianswer = sheji+"@@"+file;
		int result = papersService.stuenttinakongAnswer(studentid,paperId,shejiid,shejianswer);
		
	}
	
	@RequestMapping("/saveSucess")
	@ResponseBody
	private String saveSucess(HttpServletRequest request){
		HttpSession session = request.getSession();
		Integer studentid = (Integer) session.getAttribute("studentId");
		int result = 1;
		return String.valueOf(result);
	}
	/**
	 * 学生的历史成绩
	 * @param request
	 * @return 
	 */
	@RequestMapping("/stuentwriteRecording")
	private String stuentwriteRecording(HttpServletRequest request,Model model){
		HttpSession session = request.getSession();
		Integer studentid = (Integer) session.getAttribute("studentId");
		List<onlineTestpaper> onlineTestpapers = papersService.stuentwriteRecording(studentid);
		model.addAttribute("onlineTestpapers", onlineTestpapers);
		return "pages/student/historyTest";
	}
	/**
	 * 查看学生做过的试卷
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/stuentHasWrited")
	private String stuentHasWrited(HttpServletRequest request,Model model){
		HttpSession session = request.getSession();
		Integer studentid = (Integer) session.getAttribute("studentId");
		List<onlineTestpaper> onlineTestpapers = papersService.stuentHasWrited(studentid);
		model.addAttribute("onlineTestpapers", onlineTestpapers);
		return "pages/student/paperAnswer";
	}
	
	
	/**
	 * 查看试卷答案
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/studnetToPaperanswer")
	private String studnetToPaperanswer(Integer paperId,HttpServletRequest request,Model model){
		HttpSession session = request.getSession();
		Integer studentid = (Integer) session.getAttribute("studentId");
		List<OnlineQuestions> list = studentExamService.testPaperShow(paperId);
		onlineTestpaper paperTest = studentExamService.selectPaperId(paperId);
		List<OnlineQuestions> choiceList = new ArrayList<OnlineQuestions>();
		List<OnlineQuestions> blankList = new ArrayList<OnlineQuestions>();
		List<OnlineQuestions> decideList = new ArrayList<OnlineQuestions>();
		List<OnlineQuestions> simpleList = new ArrayList<OnlineQuestions>();
		List<OnlineQuestions> designList = new ArrayList<OnlineQuestions>();
		for (OnlineQuestions onlineQuestions : list) {
			if(onlineQuestions!=null&&onlineQuestions.getQuestionType()==1){//选择题
				String[] option = onlineQuestions.getQuestionOption().split("@@");
				onlineQuestions.setOptionA(option[0]);
				onlineQuestions.setOptionB(option[1]);
				onlineQuestions.setOptionC(option[2]);
				onlineQuestions.setOptionD(option[3]);
					choiceList.add(onlineQuestions);
			}else if(onlineQuestions!=null&&onlineQuestions.getQuestionType()==2){//填空题
					blankList.add(onlineQuestions);
			}else if(onlineQuestions!=null&&onlineQuestions.getQuestionType()==3){//判断
					decideList.add(onlineQuestions);
			}else if(onlineQuestions!=null&&onlineQuestions.getQuestionType()==4){//简答
					simpleList.add(onlineQuestions);
			}else if(onlineQuestions!=null&&onlineQuestions.getQuestionType()==5){//算法设计
				if(!onlineQuestions.getQuestionPhoto().equals("@@")){
					String[] photo = onlineQuestions.getQuestionPhoto().split("@@");
					if(!photo[0].equals("")){
						onlineQuestions.setQuestionPhoto1(photo[0]);
					}
					if(!photo[1].equals("")){
						onlineQuestions.setQuestionPhoto2(photo[1]);
					}
				}
					designList.add(onlineQuestions);
			}
		}
		model.addAttribute("paperTest", paperTest);
		model.addAttribute("xuanzeList", choiceList);
		model.addAttribute("tiankongList", blankList);
		model.addAttribute("panduanList", decideList);
		model.addAttribute("jiandaList", simpleList);
		model.addAttribute("shejiList", designList);
		return "pages/student/answerindex";
	}
	/**
	 * 根据试卷id查询题库
	 * @param request
	 * @param model
	 * @param paperId
	 * @return
	 */
	@RequestMapping("/paperShowAnswer")
	private String paperShowAnswer(HttpServletRequest request,Model model,Integer paperId){
		HttpSession session = request.getSession();
		Integer studentid = (Integer) session.getAttribute("studentId");
		List<OnlineQuestions> onlineQuestionList = papersService.paperShowAnswer(studentid,paperId);
		model.addAttribute("onlineQuestionList", onlineQuestionList);
		
		return "pages/student/";
	}
	
	
	/**
	 * 查看学生的个人信息
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/studnetInformation")
	private String studnetInformation(HttpServletRequest request,Model model){
		HttpSession session = request.getSession();
		Integer studentid = (Integer) session.getAttribute("studentId");
		OnlineStudent onlinstudent =  papersService.studnetInformation(studentid);
		OnlineClass studentclass = papersService.studentClass(studentid);
		
		model.addAttribute("onlinstudent", onlinstudent);
		model.addAttribute("studentclass", studentclass);
		return "pages/student/personalData";
	}
	/**
	 * 修改密码
	 * @return 
	 */
	@RequestMapping("/updatePassword")
	@ResponseBody
	private String updatePassword(HttpServletRequest request,String userName,String password){
		HttpSession session = request.getSession();
		Integer studentId = (Integer) session.getAttribute("studentId");
		int resuly = papersService.updatePassword(studentId,userName,password);
		return String.valueOf(resuly);
	}
	/**
	 * 成绩分析
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/toperformance")
	private String toperformance(HttpServletRequest request,Model model){
		HttpSession session = request.getSession();
		Integer studentid = (Integer) session.getAttribute("studentId");
		List<onlineTestpaper> onlineTestpapers = papersService.stuentwriteRecording(studentid);
		model.addAttribute("onlineTestpapers", onlineTestpapers);
		return "pages/student/performance";
	}
	/**
	 * 去成绩分析
	 * @param request
	 * @param model
	 * @param paperId
	 * @return
	 */
	@RequestMapping("/toOneperformance")
	private String toOneperformance(HttpServletRequest request,Model model,Integer paperId){
		model.addAttribute("paperId", paperId);
		return "pages/student/textFx";
	}
	/**
	 * 存储学生分析
	 * @param request
	 * @param model
	 * @param paperId
	 * @return
	 */
	@RequestMapping("/savestudentmace")
	@ResponseBody
	private String savestudentmace(HttpServletRequest request,Model model,String entersystem,Integer paperId){
		HttpSession session = request.getSession();
		Integer studentid = (Integer) session.getAttribute("studentId");
		int result = papersService.savestudentmace(studentid,paperId,entersystem);
		return String.valueOf(result);
	}
}
