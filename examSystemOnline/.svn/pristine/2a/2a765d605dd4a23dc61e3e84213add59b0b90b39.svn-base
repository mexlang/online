package com.echo.web.serivce;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import com.echo.web.mapper.OnlineQuestionsMapper;
import com.echo.web.mapper.onlineQuestionsTestpaperMapper;
import com.echo.web.model.onlineQuestionsTestpaper;
import com.echo.web.util.common.RandomNumber;


/**
 * <bean class="com.echo.web.serivce.BkUserService" id="bkUserService"  ></bean>
 * @author mexlang
 */
@Service//组件
public class onlineQuestionTestpapaerService {

	/***
	 * 
	 * 
	 */
	@Resource
	private  onlineQuestionsTestpaperMapper testpaperMapper;
	@Autowired
	private OnlineQuestionsMapper onlineQuestionsMapper;
	@Resource
	private  RedisTemplate  redisTemplate;
	@Autowired
	private onlineQuestionsTestpaperMapper testMapper;	
	/**
	 * 保存数据
	 * @param OnlineQuestionTestpaper
	 * @throws Exception
	 */
		public onlineQuestionsTestpaper  insertOnlineQuestionTestpaper(onlineQuestionsTestpaper testpaper){
			testpaperMapper.insertSelective(testpaper);
			return testpaper;
		}
		
		  /**
		   *   返回试卷id
		   *   
		   * @return
		   */
		  public List<Integer> queryonlineQuestionsTestpaperByGroup() throws Exception{
			  List<Integer> number = testpaperMapper.queryonlineQuestionsTestpaperByGroup();
			  return number;
		  }

		  
		/**

		 * 自动组卷	

		 * @param text_num1

		 * @param text_num2

		 * @param text_num3

		 * @param text_num4

		 * @param text_num5

		 * @param paperId

		 * @return 

		 */
		public int automaticTestPaper(Integer text_num1, Integer text_num2,
				Integer text_num3, Integer text_num4, Integer text_num5,
				Integer paperId) {
			onlineQuestionsTestpaper onliTestPaper = new onlineQuestionsTestpaper();
			int result = 0;
			List<Integer> choiceList = onlineQuestionsMapper.selectAllChoiceId();
			int choiceCount = onlineQuestionsMapper.queryChoiceForPageCount();
			
			List<Integer> decideList = onlineQuestionsMapper.selectAllDecideId();
			int decideCount = onlineQuestionsMapper.queryDecideForPageCount();
			
			List<Integer> blankList = onlineQuestionsMapper.selectAllBlankId();
			int blankCount = onlineQuestionsMapper.queryBlankForPageCount();
			
			List<Integer> simpleList = onlineQuestionsMapper.selectAllSimpleId();
			int simpleCount = onlineQuestionsMapper.querySimpleForPageCount();
			
			List<Integer> designList = onlineQuestionsMapper.selectAllDesignId();
			int designCount = onlineQuestionsMapper.queryDesignForPageCount();
			
			Set<Integer> choiceSet = RandomNumber.randomNumber(text_num1, choiceCount);
			for (Integer ranDomid : choiceSet) {
				int id = choiceList.get(ranDomid);
				onliTestPaper.setPaperId(paperId);
				onliTestPaper.setQuestionId(id);
				result = testMapper.insertSelective(onliTestPaper);
			}
			Set<Integer> decideSet = RandomNumber.randomNumber(text_num2, choiceCount);
			for (Integer ranDomid : decideSet) {
				int id = decideList.get(ranDomid);
				onliTestPaper.setPaperId(paperId);
				onliTestPaper.setQuestionId(id);
				result = testMapper.insertSelective(onliTestPaper);
			}
			Set<Integer> blankSet = RandomNumber.randomNumber(text_num3, blankCount);
			for (Integer ranDomid : blankSet) {
				int id = blankList.get(ranDomid);
				onliTestPaper.setPaperId(paperId);
				onliTestPaper.setQuestionId(id);
				result = testMapper.insertSelective(onliTestPaper);
			}
			Set<Integer> simpleSet = RandomNumber.randomNumber(text_num4, simpleCount);
			for (Integer ranDomid : simpleSet) {
				int id = simpleList.get(ranDomid);
				onliTestPaper.setPaperId(paperId);
				onliTestPaper.setQuestionId(id);
				result = testMapper.insertSelective(onliTestPaper);
			}
			Set<Integer> designSet = RandomNumber.randomNumber(text_num5, designCount);
			for (Integer ranDomid : designSet) {
				int id = designList.get(ranDomid);
				onliTestPaper.setPaperId(paperId);
				onliTestPaper.setQuestionId(id);
				result = testMapper.insertSelective(onliTestPaper);
			}
			return result;
		}  

}
