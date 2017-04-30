package com.echo.web.serivce;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.echo.web.mapper.OnlineTeacherMapper;
import com.echo.web.model.OnlineTeacher;

@Service
public class OnlineTeacherService {

	/**
	 * crud教师信息
	 */
	@Resource
	private OnlineTeacherMapper teacherMapper;
	
	/**
	 * 查询所有的教师信息
	 * @return
	 */
	public List<OnlineTeacher> queryAllTeacher() {
		List<OnlineTeacher> list = teacherMapper.queryAllTeacher();
		return list;
	}
	/**
	 * 分页查询教师信息
	 * @return
	 */
	public List<OnlineTeacher> queryAllTeacherforPage(Integer start ,Integer size) {
		List<OnlineTeacher> list = teacherMapper.queryAllTeacherForPage(start, size);
		return list;
	}
	/**
	 * 删除教师
	 */
	public int deleteTeacher(int teacherId) {
		int result = teacherMapper.deleteByPrimaryKey(teacherId);
		return result;
	}
	
	/**
	 * 修改教师信息
	 */
	public boolean updataTeacher (OnlineTeacher teacher) {
		int result = teacherMapper.updateByPrimaryKeySelective(teacher);
		return result>=0?true:false;
	}
	/**
	 * 导入教师信息
	 */
	public boolean InsertTeacher (OnlineTeacher teacher) {
		int result = teacherMapper.insertSelective(teacher);
		return result>=0?true:false;
	}
	
//	update
	
	public int updateByPrimaryKey(OnlineTeacher teacher) {
		int result = teacherMapper.updateByPrimaryKeySelective(teacher);
		return result;
	}
//	query
	public OnlineTeacher queryTeacher(Integer teacherId) {
		OnlineTeacher result = teacherMapper.selectByPrimaryKey(teacherId);
		return result;
	}
}
