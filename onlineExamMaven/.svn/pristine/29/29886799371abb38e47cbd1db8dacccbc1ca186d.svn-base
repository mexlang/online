package com.echo.web.serivce;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.echo.web.mapper.OnlineClassMapper;
import com.echo.web.model.OnlineClass;

@Service
public class OnlineClassService {

	@Autowired
	private OnlineClassMapper onlineClassMapper;
	
	/**
	 * 新建一个班级
	 * @param onlineClass
	 * @return
	 */
	public OnlineClass insertClass (OnlineClass onlineClass) {
		onlineClassMapper.insertSelective(onlineClass);
		return onlineClass;
	}
	
	/**
	 * 删除一个班级
	 * @param classId
	 * @return
	 */
	public int deleteClass (Integer classId) {
		int result = onlineClassMapper.deleteByPrimaryKey(classId);
		return result;
	}
	
	/**
	 * 修改班级信息
	 * @param onlineClass
	 * @return
	 */
	public int updataClass (OnlineClass onlineClass) {
		int result = onlineClassMapper.updateByPrimaryKeySelective(onlineClass);
		return result;
	}
	
	/**
	 * 查询所有班级信息
	 * @param onlineClass
	 * @return
	 */
	public List<OnlineClass> queryAllClass() {
		 List<OnlineClass> result = onlineClassMapper.queryAllOnlineClass();
		return result;
	}
}
