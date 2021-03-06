package com.echo.web.controller.students;

import java.util.ArrayList;
import java.util.List;




import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.echo.web.model.OnlineQuestions;
import com.echo.web.model.onlineTestpaper;
import com.echo.web.serivce.StudentExamService;

@Controller
@RequestMapping("/studentExam")
public class StuendExamControl {
	
	@Autowired
	private StudentExamService studentExamService;
	
	private Logger  logger= LoggerFactory.getLogger(StuendExamControl.class);

	/**
	 * 查询个数
	 * @param startPage
	 * @param pageSize
	 * @param studentSelectType
	 * @param model
	 * @return
	 */
	@RequestMapping("/studentSelectType")
	public String studentSelectType(@RequestParam(defaultValue="1") Integer startPage,  @RequestParam(defaultValue="10")Integer pageSize ,Model model){
	
		model.addAttribute("startPage",startPage);//开始页
		int count=studentExamService.queryStudntForChapterCount();//当前数据总数量
		int totalPages=(count%pageSize==0?0:1)+(count/pageSize);
		model.addAttribute("totalPages",totalPages);//总页数
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("userNumber", count);
		logger.info(totalPages+"----一共有多少页数");
		return  "pages/student/zxks";
	}
	/**
	 * 查询试卷全部内容
	 * @param startPage
	 * @param pageSize
	 * @param model
	 * @return
	 */
	@RequestMapping("/StudentSelectPage")
	public String StudentSelectPage(@RequestParam(defaultValue="1") Integer startPage,  @RequestParam(defaultValue="10")Integer pageSize ,Model model){
	
		int currentPage=(startPage-1)*pageSize;//通过java 程序 转换为 mysql 需要的数据格式
		List<onlineTestpaper> userList = studentExamService.queryStudentForPage(currentPage, pageSize);
		logger.info("查询的数据是:{}",userList);  
		model.addAttribute("userList", userList);
		  model.addAttribute("currentPage", currentPage);
		  return  "pages/student/studentPaper";
	}
	/**
	 * 查询试卷题库
	 * @param paperId
	 * @param model
	 * @return
	 */
	@RequestMapping("/testPaperShow")
	public String testPaperShow(Integer paperId,Model model){
		List<OnlineQuestions> list = studentExamService.testPaperShow(paperId);
		onlineTestpaper paperTest = studentExamService.selectPaperId(paperId);
		 
		List<OnlineQuestions> choiceList = new ArrayList<OnlineQuestions>();
		List<OnlineQuestions> blankList = new ArrayList<OnlineQuestions>();
		List<OnlineQuestions> decideList = new ArrayList<OnlineQuestions>();
		List<OnlineQuestions> simpleList = new ArrayList<OnlineQuestions>();
		List<OnlineQuestions> designList = new ArrayList<OnlineQuestions>();
		for (OnlineQuestions onlineQuestions : list) {
			if(onlineQuestions.getQuestionType()==1){//选择题
				String[] option = onlineQuestions.getQuestionOption().split("@@");
				onlineQuestions.setOptionA(option[0]);
				onlineQuestions.setOptionB(option[1]);
				onlineQuestions.setOptionC(option[2]);
				onlineQuestions.setOptionD(option[3]);
				choiceList.add(onlineQuestions);
			}else if(onlineQuestions.getQuestionType()==2){//填空题
				blankList.add(onlineQuestions);
			}else if(onlineQuestions.getQuestionType()==3){//判断
				decideList.add(onlineQuestions);
			}else if(onlineQuestions.getQuestionType()==4){//简答
				simpleList.add(onlineQuestions);
			}else if(onlineQuestions.getQuestionType()==5){//算法设计
				String[] photo = onlineQuestions.getQuestionPhoto().split("@@");
				onlineQuestions.setQuestionPhoto1(photo[0]);
				onlineQuestions.setQuestionPhoto2(photo[1]);
				designList.add(onlineQuestions);
			}
		}
		model.addAttribute("paperTest", paperTest);
		model.addAttribute("xuanzeList", choiceList);
		model.addAttribute("tiankongList", blankList);
		model.addAttribute("panduanList", decideList);
		model.addAttribute("jiandaList", simpleList);
		model.addAttribute("shejiList", designList);
		
		return "pages/student/ksindex";
	}
}
