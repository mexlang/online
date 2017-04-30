package com.echo.web.serivce;

import java.util.List;

import javax.annotation.Resource;
import javax.enterprise.context.RequestScoped;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import sun.util.logging.resources.logging;

import com.echo.web.mapper.onlineTestpaperMapper;
import com.echo.web.model.onlineTestpaper;
import com.fasterxml.jackson.databind.ObjectMapper;


/**
 * <bean class="com.echo.web.serivce.BkUserService" id="bkUserService"  ></bean>
 * @author mexlang
 * onlineTestpaper.java
 */
@Service//组件
public class OnlineTestpaperService {
/***
 * 
 */
	@Resource
	private  onlineTestpaperMapper questionMapper;

	@Resource
	private  RedisTemplate  redisTemplate;
		
	/**
	 * 保存数据
	 * @param onlineTestpaper
	 * @throws Exception
	 */
		public onlineTestpaper  insertonlineTestpaper(onlineTestpaper question){
			questionMapper.insertSelective(question);
			return question;
		}
		
		/**
		 * 查询所有考试
		 * @param question
		 * @return
		 */
		public List<onlineTestpaper> queryAllTestpaper(){
			List<onlineTestpaper> list = questionMapper.queryAllTestpape();
			return list;
		}
		
		/***
		 * 更新信息
		 * @param record
		 * @return
		 */
		public boolean updataTestpaper(onlineTestpaper record) {
			int result = questionMapper.updateByPrimaryKeySelective(record);
			return (result>=1)?true:false;
		}
		
		/**
		 * 查询
		 * @param paperId
		 * @return
		 */
		public onlineTestpaper queryTestpaper(Integer paperId) {
			onlineTestpaper result = questionMapper.selectByPrimaryKey(paperId);
			return result;
		}
  
		/**
		 * 删除
		 * @param paperId
		 * @return
		 */
		public Integer deleteTestpaper(Integer paperId) {
			int result = questionMapper.deleteByPrimaryKey(paperId);
			return result;
		}
}
