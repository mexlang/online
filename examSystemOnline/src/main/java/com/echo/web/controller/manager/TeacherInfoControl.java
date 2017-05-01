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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.echo.web.model.OnlineStudent;
import com.echo.web.model.OnlineTeacher;
import com.echo.web.serivce.OnlineTeacherService;
import com.echo.web.util.common.GetTeachersExclContents;
import com.echo.web.util.common.MD5Helper;

@Controller
@RequestMapping("/ManagerTeacher")
public class TeacherInfoControl {

	private Logger logger = LoggerFactory.getLogger(TeacherInfoControl.class);
	/**
	 * 管理端对教师的控制
	 */
	
	@Autowired
	private OnlineTeacherService teacherService;
	@Autowired
	private OnlineTeacher teacher;
	@Autowired
	private GetTeachersExclContents excelToDb;
	
	/***
	 * 跳转到修改信息页面
	 * @param teacher
	 * @return
	 */
	@RequestMapping("toupdata")
	public String toupdataTeacherInfo(OnlineTeacher teacher,Model model,HttpSession session) {
		Integer teacherId = teacher.getTeacherId();
		session.setAttribute("sesstionIdTeacherId", teacherId);
		OnlineTeacher teacherSelect = teacherService.queryTeacher(teacherId);
		model.addAttribute("teacher", teacherSelect);
		 return "pages/uploadTeacher";
	}
	
	/***
	 * 修改信息
	 * @param teacher
	 * @return
	 */
	@RequestMapping("updataTeacherInfo")
	@ResponseBody
	public String updataTeacherInfo(OnlineTeacher teacher,HttpSession session) {
		 Integer teacherId = (Integer) session.getAttribute("sesstionIdTeacherId");
		 teacher.setTeacherId(teacherId);
		 session.removeAttribute("sesstionIdTeacherId");
		 int result = teacherService.updateByPrimaryKey(teacher);
		 logger.info("更新的结果：" + result);
		 return "redirect:queryTeacher";
	}
	
	/**
	 * 跳转到Teacher添加页面
	 */
	@RequestMapping("toAdd")
	public String toAddStudent() {
		 return "pages/addTeacher";
	}	
	
	/***
	 * 保存Teacher的信息
	 * @param Student
	 * @return
	 */
	@RequestMapping("addTeacherInfo")
	public String addStudentInfo(OnlineTeacher teacher) {
		teacher.setTeacherPasswd(MD5Helper.encrypt16(teacher.getTeacherPasswd()));
		 boolean result = teacherService.InsertTeacher(teacher);
		 logger.info("SUCCESS:" + result);
		 return "redirect:queryTeacher";
	}
	
	
	/***
	 * 查询教师的信息
	 * @param teacher
	 * @return
	 */
	@RequestMapping("queryTeacherInfo")
	public String queryTeacherInfo(OnlineTeacher teacher,Model model) {
		 List<OnlineTeacher> result = teacherService.queryAllTeacher();
		 logger.info("查询教师的结果：" + result);
		 model.addAttribute("TeacherList", result);
		 return "pages/guanliyuan/xxdr-techer";
	}
	
	/***
	 * 删除教师的信息
	 * @param teacher
	 * @return
	 */
	@RequestMapping("deleteTeacherInfo")
	public String deleteTeacherInfo(Integer teacherId,Model model) {
		 int result = teacherService.deleteTeacher(teacherId);
		 logger.info("查询教师的结果：" + result);
		 return "redirect:queryTeacher";
	}
	
	
	/***
	 * 批量导入学生的信息
	 * @param file
	 * @return
	 */
	@RequestMapping("excelToDbOfTeacher")
	public String excelToDbOfTeacher(@RequestParam("file") MultipartFile file,Model model) {
		File excelFile = new File("F:/java/tomcat-8/webapps/examSystemOnline/doc/"+file.getOriginalFilename());
		if (!file.isEmpty())
			try {
				file.transferTo(excelFile);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			} 
		List<OnlineTeacher> list = new ArrayList<OnlineTeacher>();
			list = excelToDb.getAllFromExcel(excelFile);
		
		for(OnlineTeacher stu : list) {
			if (!excelToDb.teacherIdIsEmpty(stu.getTeacherId())) {
				teacherService.InsertTeacher(stu);  //防止重复插入
			} else {
				logger.info("检测到有重复Id的存在，已跳过，重复Id："+stu.getTeacherId());
			}
		}
		 return "redirect:queryTeacher";
	
	}
	
	
	/***
	 * 转到文件上传页面
	 * @param file
	 * @return
	 */
	@RequestMapping("excelToDbforTeacherPage")
	public String excelToDbforTeacher() {
		
		return "pages/teacherUpload";
	}
	
	/***
	 * 分页插件数据
	 * @return
	 */
	@RequestMapping("queryTeacher")
	public String queryTeacher(
			@RequestParam(defaultValue="0")Integer startPage,
			@RequestParam(defaultValue="3")Integer pageSize,
			Model model) {
		 List<OnlineTeacher> result = teacherService.queryAllTeacher();
		 int count = result.size();
		 int totalPages=(count%pageSize==0?0:1)+(count/pageSize);
		 model.addAttribute("TeacherNumber", count);
		 model.addAttribute("totalPages", totalPages);
		 model.addAttribute("pageSize", pageSize);
		 model.addAttribute("startPage", startPage);
		 return "pages/guanliyuan/xxdr-techer";
	}
	
	/***
	 * 分页查询所有学生的信息
	 * @return
	 */
	@RequestMapping("queryTeacherInfoPage")
	public String queryTeacherInfoPage(
			@RequestParam(defaultValue="1")Integer startPage,
			@RequestParam(defaultValue="3")Integer pageSize,Model model) {
		 int currentPage = (startPage - 1)*pageSize;
		 List<OnlineTeacher> result = teacherService.queryAllTeacherforPage(currentPage, pageSize);
		 model.addAttribute("teacherList", result);
		 model.addAttribute("currentPage", currentPage);
		 return "pages/xxdr-techerAdd";
	}
	
	/**
	 * 下载模板
	 * @throws IOException 
	 */
	@RequestMapping("downloadExcel")
	public void downloadExcel(HttpServletRequest request, HttpServletResponse response) throws IOException {
		File file = new File("C:/Users/Administrator/Desktop/毕业设计/teacher - 副本.xls");
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
	
}
