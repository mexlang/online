package com.echo.web.util.common;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.echo.web.model.OnlineStudent;
import com.echo.web.serivce.onStudentServise;

/***
 * 工具类
 * Excel文件数据插入到数据库
 * @author Administrator
 *
 */

@Component
public class GetStudentsExclContents {
	
	@Autowired
	private OnlineStudent student;
	@Autowired
	private onStudentServise studentService;

	
	/**
	 * 处理表格文件
	 * @param file
	 * @return list
	 */
	public  List<OnlineStudent>  getAllFromExcel(File file){
		List<OnlineStudent> list = new ArrayList<OnlineStudent>();
		try {
			 Workbook wrb = Workbook.getWorkbook(file);
			 Sheet rs = wrb.getSheet("Sheet1");
			 int clos = rs.getColumns();
			 int rows = rs.getRows();
			 for (int b = 1; b < rows; b++){
			 for (int a = 0; a < clos; a++){
				 String studentIdTemp = rs.getCell(a++, b).getContents();
				 if(studentIdTemp =="") 
					 break;
                                                      //	a:列数   b:行数
					 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
					 int studentId = Integer.parseInt(studentIdTemp);
					 String studentName = rs.getCell(a++, b).getContents();
					 String studentNickename = rs.getCell(a++, b).getContents();
					 String studentPasswd = MD5Helper.encrypt16(rs.getCell(a++, b).getContents());
					 String studentSex = rs.getCell(a++, b).getContents();
					 String studentPhone = rs.getCell(a++, b).getContents();
					 Date studentBirthday = sdf.parse(rs.getCell(a++, b).getContents());
					 Date studentStartdate = sdf.parse(rs.getCell(a++, b).getContents());
					 OnlineStudent studentTemp = new OnlineStudent();
					 studentTemp.setStudentId(studentId);
					 studentTemp.setStudentName(studentName);
					 studentTemp.setStudentNickename(studentNickename);
					 studentTemp.setStudentPasswd(studentPasswd);
					 studentTemp.setStudentSex(studentSex);
					 studentTemp.setStudentPhone(studentPhone);
					 studentTemp.setStudentBirthday(studentBirthday);
					 studentTemp.setStudentStartdate(studentStartdate);
					 list.add(studentTemp);
					 System.out.println("插入的用户Id"+studentTemp.getStudentId());
				 }
			 }
		} catch (BiffException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		if(list.isEmpty()) 
			return null;

		return list;
	}
	
	/***
	 * 判断StudentId是否已经存在在数据库中
	 * @param Id
	 * @return boolean
	 */
	public boolean studentIdIsEmpty(Integer Id){
		Set<Integer> set = new HashSet<Integer>();
		List<OnlineStudent> studentList = studentService.selectAllStudent();
		for (OnlineStudent os: studentList) {
			//遍历学生Id，放到set中，供插入数据前查询学生Id是否存在
			set.add(os.getStudentId());
		}
		if (set.contains(Id)) {
			//判断Id在DB中是否已经存在
			return true;
		}
		return false;
	}
}
