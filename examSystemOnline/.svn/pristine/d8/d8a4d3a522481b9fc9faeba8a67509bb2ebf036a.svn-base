package com.echo.web.serivce;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import com.echo.web.mapper.OnlineQuestionsMapper;
import com.echo.web.model.OnlineQuestions;



/**
 * <bean class="com.echo.web.serivce.BkUserService" id="bkUserService"  ></bean>
 * @author mexlang
 */
@Service//组件
public class OnlineQuestionService {

	/***
	 * 
	 * 
	 */
	@Resource
	private  OnlineQuestionsMapper questionMapper;

	@Resource
	private  RedisTemplate  redisTemplate;
		
	  public List<OnlineQuestions> queryOnlineQuestionsToShow (Integer type,Integer paperId) {
		  List<OnlineQuestions> list = questionMapper.queryOnlineQuestionsToShow(type, paperId);
		  return list;
	}

}
