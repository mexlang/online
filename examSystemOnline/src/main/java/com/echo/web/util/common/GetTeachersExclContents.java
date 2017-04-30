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

import com.echo.web.model.OnlineTeacher;
import com.echo.web.serivce.OnlineTeacherService;

/***
 * 工具类
 * Excel文件数据插入到数据库
 * @author Administrator
 *
 */

@Component
public class GetTeachersExclContents {
	
	@Autowired
	private OnlineTeacher teacher;
	@Autowired
	private OnlineTeacherService teacherService;

	
	/**
	 * 处理表格文件
	 * @param file
	 * @return list
	 */
	public  List<OnlineTeacher>  getAllFromExcel(File file){
		List<OnlineTeacher> list = null;
		try {
			 Workbook wrb = Workbook.getWorkbook(file);
			 Sheet rs = wrb.getSheet("Sheet1");
			 int clos = rs.getColumns();
			 int rows = rs.getRows();
			 list = new ArrayList<OnlineTeacher>();
			 for (int b = 1; b < rows; b++){
				 for (int a = 0; a < clos; a++){
					 
					 String teacherIdTemp = rs.getCell(a++, b).getContents();
					 if (teacherIdTemp == "")
						 break;
                                                      //	a:列数   b:行数
					 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
					 int teacherId = Integer.parseInt(teacherIdTemp);
					 String teacherName = rs.getCell(a++, b).getContents();
					 String teacherNickename = rs.getCell(a++, b).getContents();
					 String teacherPasswd = MD5Helper.encrypt16(rs.getCell(a++, b).getContents());
					 String teacherSex = rs.getCell(a++, b).getContents();
					 String teacherPhone = rs.getCell(a++, b).getContents();
					 String teacherAddres = rs.getCell(a++, b).getContents();
					 Date teacherBirthday = sdf.parse(rs.getCell(a++, b).getContents());
					 OnlineTeacher teacherTemp = new OnlineTeacher();
					 teacherTemp.setTeacherId(teacherId);
					 teacherTemp.setTeacherName(teacherName);
					 teacherTemp.setTeacherNickname(teacherNickename);
					 teacherTemp.setTeacherPasswd(teacherPasswd);
					 teacherTemp.setTeacherSex(teacherSex);
					 teacherTemp.setTeacherPhone(teacherPhone);
					 teacherTemp.setTeacherAddres(teacherAddres);
					 teacherTemp.setTeacherBirthday(teacherBirthday);
					 list.add(teacherTemp);
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
	 * 判断teacherId是否已经存在在数据库中
	 * @param Id
	 * @return boolean
	 */
	public boolean teacherIdIsEmpty(Integer Id){
		Set<Integer> set = new HashSet<Integer>();
		List<OnlineTeacher> teacherList = teacherService.queryAllTeacher();
		for (OnlineTeacher os: teacherList) {
			//遍历学生Id，放到set中，供插入数据前查询学生Id是否存在
			set.add(os.getTeacherId());
		}
		if (set.contains(Id)) {
			//判断Id在DB中是否已经存在
			return true;
		}
		return false;
	}
}
