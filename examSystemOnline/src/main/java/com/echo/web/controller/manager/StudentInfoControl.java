package com.echo.web.controller.manager;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.echo.web.model.OnlineStudent;
import com.echo.web.model.OnlineTeacher;
import com.echo.web.model.onlineExaminInfor;
import com.echo.web.serivce.OnlineTeacherService;
import com.echo.web.serivce.onStudentServise;
import com.echo.web.serivce.onlineExaminInforService;
import com.echo.web.util.common.GetStudentsExclContents;
import com.echo.web.util.common.MD5Helper;

@Controller
@RequestMapping("/ManagerStudent")
public class StudentInfoControl {

	private Logger logger = LoggerFactory.getLogger(StudentInfoControl.class);
	/**
	 * 管理端对学生的控制
	 */
	
	@Autowired
	private onStudentServise StuService;
	@Autowired
	private OnlineStudent student;
	@Autowired
	private GetStudentsExclContents excel;
	@Autowired
	private onlineExaminInfor examInfo;
	@Autowired
	private onlineExaminInforService examInfoService;
	/***
	 * 跳转到学生的修改信息页面
	 * @param teacher
	 * @return
	 */
	@RequestMapping("toupdata")
	public String toupdataStudentInfo(OnlineStudent student,Model model,HttpSession session) {
		Integer studentId = student.getStudentId();
		session.setAttribute("sesstionIdstudentId", studentId);
		OnlineStudent studentSelect = StuService.selectStudent(studentId);
		model.addAttribute("student", studentSelect);
		 return "pages/uploadStudent";
	}
	

	
	/***
	 * 修改学生的信息
	 * @param Student
	 * @return
	 */
	@RequestMapping("updataStudentInfo")
	public String updataStudentInfo(OnlineStudent student,HttpSession session) {
		 Integer StudentId = (Integer) session.getAttribute("sesstionIdstudentId");
		 student.setStudentId(StudentId);
		 session.removeAttribute("sesstionIdstudentId");
		 int result = StuService.updateByPrimaryKey(student);
		 logger.info("更新的结果：" + result);
		 return "redirect:queryStudent";
	}
	
	/**
	 * 跳转到学生添加页面
	 */
	@RequestMapping("toAdd")
	public String toAddStudent() {
		 return "pages/addStudent";
	}	
	
	/***
	 * 保存学生的信息
	 * @param Student
	 * @return
	 */
	@RequestMapping("addStudentInfo")
	public String addStudentInfo(OnlineStudent student) {
		student.setStudentStartdate(new Date());
		student.setStudentPasswd(MD5Helper.encrypt16(student.getStudentPasswd()));
		 int result = StuService.insert(student);
		 logger.info("更新的结果：" + result);
		 return "redirect:queryStudent";
	}
	
	/***
	 * 分页插件数据
	 * @return
	 */
	@RequestMapping("queryStudent")
	public String queryStudent(
			@RequestParam(defaultValue="1")Integer startPage,
			@RequestParam(defaultValue="3")Integer pageSize,Model model) {
		 List<OnlineStudent> result = StuService.selectAllStudent();
		 int count = result.size();
		 int totalPages=(count%pageSize==0?0:1)+(count/pageSize);
		 model.addAttribute("studentNumber", count);
		 model.addAttribute("totalPages", totalPages);
		 model.addAttribute("pageSize", pageSize);
		 model.addAttribute("startPage", startPage);
		 return "pages/guanliyuan/xxdr-student";
	}
	
	/***
	 * 分页查询所有学生的信息
	 * @return
	 */
	@RequestMapping("queryStudentInfoPage")
	public String queryStudentInfoPage(
			@RequestParam(defaultValue="1")Integer startPage,
			@RequestParam(defaultValue="3")Integer pageSize,Model model) {
		 int currentPage = (startPage - 1)*pageSize;
		 List<OnlineStudent> result = StuService.selectAllStudentForPage(currentPage, pageSize);
		 model.addAttribute("StudentList", result);
		 model.addAttribute("currentPage", currentPage);
		 return "pages/xxdr-studentAdd";
	}
	
	
	/***
	 * 删除学生的信息
	 * @param student
	 * @return
	 */
	@RequestMapping("deleteStudentInfo")
	public String deleteStudentInfo(OnlineStudent Student,Model model) {
		 int result = StuService.deleteByPrimaryKey(Student);
		 logger.info("删除教师的结果：" + result);
		 return "redirect:queryStudent";
	}
	
	/***
	 * 批量导入学生的信息
	 * @param file
	 * @return
	 */
	@RequestMapping("excelToDb")
	public String excelToDb(@RequestParam("file") MultipartFile file,Model model) {
		File excelFile = new File("F:/java/tomcat-8/webapps/examSystemOnline/doc/"+file.getOriginalFilename());
		if (!file.isEmpty())
			try {
				file.transferTo(excelFile);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			} 
		List<OnlineStudent> list = new ArrayList<OnlineStudent>();
			list = excel.getAllFromExcel(excelFile);
		
		for(OnlineStudent stu : list) {
			System.out.println(stu.toString());
			if (!excel.studentIdIsEmpty(stu.getStudentId())) {
				StuService.insert(stu);  //防止重复插入
			} else {
				logger.info("检测到有重复Id的存在，已跳过，重复Id："+stu.getStudentId());
			}
		}
		 return "redirect:queryStudent";
	
	}
	
	
	/***
	 * 转到文件上传页面
	 * @param file
	 * @return
	 */
	@RequestMapping("SendExcelToDbPage")
	public String SendExcelToDbPage() {
		
		return "pages/upload";
	}
	
	
	/**
	 * 下载模板
	 * @throws IOException 
	 */
	@RequestMapping("downloadExcel")
	public void downloadExcel(HttpServletRequest request, HttpServletResponse response) throws IOException {
		File file = new File("C:/Users/Administrator/Desktop/毕业设计/student - 副本.xls");
		FileInputStream fileInputStream = new FileInputStream(file);
        //设置Http响应头告诉浏览器下载这个附件
        response.setHeader("Content-Disposition", "attachment;Filename=" + URLEncoder.encode(file.getName(), "UTF-8"));
        OutputStream outputStream = response.getOutputStream();
        byte[] bytes = new byte[2048];
        int len = 0;
        while ((len = fileInputStream.read(bytes))>0){
            outputStream.write(bytes,0,len);
        }
        fileInputStream.close();
        outputStream.close();
	} 
	
	
	/**
	 * 查询学生成绩列表分页
	 */
	@RequestMapping("queryAllStudentExamInfo")
	public String queryAllStudentExamInfo(
			@RequestParam(defaultValue="1")Integer startPage,
			@RequestParam(defaultValue="3")Integer pageSize,
			Model model) {
		int number = examInfoService.queryonlineExaminInforForPageCount();
	 int totalPages=(number%pageSize==0?0:1)+(number/pageSize);
	 Integer type = 0;
	 List<onlineExaminInfor> resultList = examInfoService.queryonlineExaminInforForPage(type, startPage, pageSize);
	 model.addAttribute("resultList", resultList);
	 model.addAttribute("studentNumber", number);
	 model.addAttribute("totalPages", totalPages);
	 model.addAttribute("pageSize", pageSize);
	 model.addAttribute("startPage", startPage);
		return "pages/guanliyuan/Performance";
	}
	
	
	/**
	 * 查询学生成绩列表
	 */
	@RequestMapping("StudentExamInfo")
	public String StudentExamInfo(
			@RequestParam(defaultValue="1")Integer startPage,
			@RequestParam(defaultValue="3")Integer pageSize,
			Model model) {
		 int currentPage = (startPage - 1)*pageSize;
		 Integer type = 0;
	 List<onlineExaminInfor> resultList = examInfoService.queryonlineExaminInforForPage(type, currentPage, pageSize);
	 for (onlineExaminInfor exam : resultList) {
		 Integer studentId = exam.getStudentId();
		if( studentId != null) {
			OnlineStudent result = null;
			 result = StuService.selectStudent(studentId);
		exam.setStudentName(result.getStudentName());
		}
	 }
	 model.addAttribute("resultList", resultList);
	 model.addAttribute("currentPage", currentPage);
		return "pages/sutdentPerformance";
	}
	
	/***
	 * 根据学生Id生成试卷分析
	 * @return
	 */
	@RequestMapping("studentExamAnalyze")
	public String studentExamAnalyze(
			@RequestParam("studentId") Integer studentId) {
//		StuService.
		logger.info("以生成成绩分析");
		return "";
	}
	
}
