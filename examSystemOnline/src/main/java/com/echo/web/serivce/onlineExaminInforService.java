package com.echo.web.serivce;

import java.util.List;

import javax.annotation.Resource;
import javax.enterprise.context.RequestScoped;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import sun.util.logging.resources.logging;

import com.echo.web.mapper.OnlineExaminationMapper;
import com.echo.web.mapper.onlineExaminInforMapper;
import com.echo.web.model.OnlineExamination;
import com.echo.web.model.onlineExaminInfor;
import com.fasterxml.jackson.databind.ObjectMapper;


/**
 * <bean class="com.echo.web.serivce.BkUserService" id="bkUserService"  ></bean>
 * @author mexlang
 */
@Service//组件
public class onlineExaminInforService {
/***
 * onlineExaminInfor.java
 */
	@Resource
	private  onlineExaminInforMapper questionMapper;

	@Resource
	private  RedisTemplate  redisTemplate;
	@Autowired
	private OnlineExaminationMapper examnationMapper;
	/**
	 * 保存数据
	 * @param onlineExaminInfor
	 * @throws Exception
	 */
		public onlineExaminInfor  insertonlineExaminInfor(onlineExaminInfor question){
			questionMapper.insertSelective(question);
			return question;
		}
		
		  /**
		   *   查询开始点 和查询的记录条数
		   *   LIMIT  100 ,2  第一个参数 试题类型  第二个： 开始数据起点 ；  第三个： 查询记录条数
		     SELECT * FROM `onlineExaminInfor` LIMIT ?,?
		   *   
		   * @return
		   */
		  public List<onlineExaminInfor> queryonlineExaminInforForPage(Integer type,Integer startPage,Integer pageSize) {
			  List<onlineExaminInfor> number = questionMapper.queryonlineExaminInforForPage(startPage, pageSize);
			  return number;
		  }
		  
		  public    int  queryonlineExaminInforForPageCount(){
			  int number = questionMapper.queryonlineExaminInforForPageCount();
			 return number;
		  }
		  
		  /**
		   * 查询所有
		   * @return
		   */
		  public List<onlineExaminInfor> getAll() {
			  List<onlineExaminInfor> list = questionMapper.getAll();
			  return list;
		  }
		  
		  /**
		   * 根据编号查询
		   */
		  public onlineExaminInfor queryById(Integer id) {
			  onlineExaminInfor result = questionMapper.queryById(id);
			return result;
		  }
  
		  
		  /**
		   * 设置审核标志
		   */
		  public void setFlag(Integer flag,Integer id) {
			  questionMapper.setFlag(flag, id);
		  }
		  
		  /**
		   * 教师端： 试卷批改的列表查询
		   */
		  
		  public List<OnlineExamination> queryAll ()  {
			  List<OnlineExamination> list = examnationMapper.selectAll();
			  return list;
		  }
		  
		  /**
		   * 教师端：试卷批改  批改数据
		   * @param studentId
		   * @return
		   */
		  public List<OnlineExamination> queryBystudentId (Integer studentId) {
			  List<OnlineExamination> list = examnationMapper.selectAllBypaperId(studentId);
			  return list;
		  }
		  
}
