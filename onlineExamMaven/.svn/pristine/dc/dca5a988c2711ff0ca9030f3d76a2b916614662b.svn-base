package com.echo.web.serivce;



import java.util.ArrayList;
import java.util.List;















import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.echo.web.mapper.OnlineQuestionsMapper;
import com.echo.web.model.OnlineQuestions;
import com.echo.web.util.common.SpellOption;


@Service
public class TeacherChoiceService {
	@Resource
	private OnlineQuestionsMapper mapper;
	/**
	 * 
	 * 选择题保存题库 试题类型1选择题 2 填空 3 判断4简答5 算法设计 
	 * @param onlineQuestions
	 * @return
	 */
	public OnlineQuestions choicePreserve(OnlineQuestions onlineQuestions) {
		StringBuffer resultAnswer = SpellOption.spell(onlineQuestions.getOptionA(),onlineQuestions.getOptionB(),onlineQuestions.getOptionC(),onlineQuestions.getOptionD());
		onlineQuestions.setQuestionOption(String.valueOf(resultAnswer));
		int  sb_length = resultAnswer.length();
		resultAnswer.delete(0,sb_length);
		onlineQuestions.setQuestionType(1);
		mapper.insertSelective(onlineQuestions);
		return onlineQuestions;
	}
	/**
	 * 判断题   试题类型1选择题 2 填空 3 判断4简答 
	 * @param onlineQuestions
	 * @return
	 */
	public OnlineQuestions increaseDecide(OnlineQuestions onlineQuestions) {
		mapper.insertSelective(onlineQuestions);
		return onlineQuestions;
	}
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	public int deletePreserve(Integer questionId) throws Exception{
		int	result = mapper.deleteByPrimaryKey(questionId);
		return result;
	}
	/**
	 * 修改
	 * @param onlineQuestions
	 * @return
	 */
	public int updatePreserve(OnlineQuestions onlineQuestions) {
		int number = mapper.updateByPrimaryKeySelective(onlineQuestions);

		return number;
	}
	/**
	 * 按章节查询题库
	 * @param onlineQuestions
	 * @return 
	 * @throws Exception 
	 */
	public OnlineQuestions selectBychapter(OnlineQuestions onlineQuestions) throws Exception {
		onlineQuestions = mapper.selectBychapter(onlineQuestions.getQuestionChater());
		return onlineQuestions;
	}
	/**
	 * 查询选择题总个数
	 * @return
	 */
	public int queryChoiceForPageCount() {
		int number = mapper.queryChoiceForPageCount();
		return number;
	}
	/**
	 * 分页查询选择题
	 * @param startPage
	 * @param pageSize
	 * @return
	 */
	public List<OnlineQuestions> queryChoiceForPage(int startPage,
			Integer pageSize) {
		List<OnlineQuestions> list = mapper.queryChoiceForPage(startPage, pageSize);
		List<OnlineQuestions> list2 = new ArrayList<OnlineQuestions>();
		for (OnlineQuestions onlineQuestions : list) {
			String allOption = onlineQuestions.getQuestionOption();
			String[] option = allOption.split("@@",5);
			onlineQuestions.setOptionA(option[0]);
			onlineQuestions.setOptionB(option[1]);
			onlineQuestions.setOptionC(option[2]);
			onlineQuestions.setOptionD(option[3]);
			list2.add(onlineQuestions);
		}
		return list2;
	}
	/**
	 * 选择题修改查询
	 * @param questionId
	 * @return
	 */
	public OnlineQuestions queryChoiceManger(Integer questionId) {

		OnlineQuestions onlineQuestions = mapper.selectByPrimaryKey(questionId);
		String option = onlineQuestions.getQuestionOption();
		String[] options = option.split("@@");
		onlineQuestions.setOptionA(options[0]);
		onlineQuestions.setOptionB(options[1]);
		onlineQuestions.setOptionC(options[2]);
		onlineQuestions.setOptionD(options[3]);
		return onlineQuestions;
	}
	/**
	 * 选择题修改
	 * @param onlineQuestions
	 * @return
	 */
	public int updateByPrimaryKeySelective(OnlineQuestions onlineQuestions) {
		StringBuffer resultAnswer = SpellOption.spell(onlineQuestions.getOptionA(),onlineQuestions.getOptionB(),onlineQuestions.getOptionC(),onlineQuestions.getOptionD());
		onlineQuestions.setQuestionOption(String.valueOf(resultAnswer));
		int  sb_length = resultAnswer.length();
		resultAnswer.delete(0,sb_length);
		int number = mapper.updateByPrimaryKeySelective(onlineQuestions);
		return number;
	}
	/**
	 * 判断题总数
	 * @return
	 */
	public int queryDecideForPageCount() {
		int number = mapper.queryDecideForPageCount();
		return number;
	}
	/**
	 * 判断题内容
	 * @param startPage
	 * @param pageSize
	 * @return
	 */
	public List<OnlineQuestions> queryDecideForPage(int startPage,
			Integer pageSize) {
		List<OnlineQuestions> list = mapper.queryDecideForPage(startPage, pageSize);
		return list;
	}
	/**
	 * 判断,填空，简答题修改查询
	 * @param questionId
	 * @return
	 */
	public OnlineQuestions queryDecideManger(Integer questionId) {
		OnlineQuestions onlineQuestions = mapper.selectByPrimaryKey(questionId);
		return onlineQuestions;
	}
	/**
	 * 判断，填空，简答题修改
	 * @param onlineQuestions
	 * @return
	 */
	public int updateByDecideSelective(OnlineQuestions onlineQuestions) {
		int number = mapper.updateByPrimaryKeySelective(onlineQuestions);
		return number;
	}
	/**
	 * 填空题总数
	 * @return
	 */
	public int queryBlankForPageCount() {
		int number = mapper.queryBlankForPageCount();
		return number;
	}
	/**
	 * 填空题内容
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	public List<OnlineQuestions> queryBlankForPage(int startPage,
			Integer pageSize) {
		List<OnlineQuestions> list = mapper.queryBlankForPage(startPage, pageSize);
		return list;
	}
	/**
	 * 简答题总数
	 * @return
	 */
	public int querySimpleForPageCount() {
		int number = mapper.querySimpleForPageCount();
		return number;
	}
	/**
	 * 简答题内容
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	public List<OnlineQuestions> querySimpleForPage(int startPage,
			Integer pageSize) {
		List<OnlineQuestions> list = mapper.querySimpleForPage(startPage, pageSize);
		
		return list;
	}
	/**
	 * 设计题修改查询
	 * @param questionId
	 * @return
	 */
	public OnlineQuestions queryDesignManger(Integer questionId) {

		OnlineQuestions onlineQuestions = mapper.selectByPrimaryKey(questionId);
		String photo = onlineQuestions.getQuestionPhoto();
		String[] photos = photo.split("@@");
		onlineQuestions.setQuestionPhoto1(photos[0]);
		onlineQuestions.setQuestionPhoto2(photos[1]);
		return onlineQuestions;
	}
	/**
	 * 设计题修改
	 * @param onlineQuestions
	 * @return
	 */
	public int updateByDesignKeySelective(OnlineQuestions onlineQuestions) {
		
		StringBuffer resultAnswer = SpellOption.spellPhoto(onlineQuestions.getQuestionPhoto1(), onlineQuestions.getQuestionPhoto2());
		onlineQuestions.setQuestionPhoto(String.valueOf(resultAnswer));
		int  sb_length = resultAnswer.length();
		resultAnswer.delete(0,sb_length);
		int number = mapper.updateByPrimaryKeySelective(onlineQuestions);
		return number;
	}
	/**
	 * 设计题总数
	 * @return
	 */
	public int queryDesignForPageCount() {
		int number = mapper.queryDesignForPageCount();
		return number;
	}
	/**
	 * 设计题内容
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	public List<OnlineQuestions> queryDesignForPage(int startPage,
			Integer pageSize) {
		List<OnlineQuestions> list = mapper.queryDesignForPage(startPage, pageSize);
		List<OnlineQuestions> list2 = new ArrayList<OnlineQuestions>();
		for (OnlineQuestions onlineQuestions : list) {
			String photo = onlineQuestions.getQuestionPhoto();
			
				String[] photos = photo.split("@@");
				if(photos.length==2){
					onlineQuestions.setQuestionPhoto1(photos[0]);
					onlineQuestions.setQuestionPhoto2(photos[1]);
				}else if(photos.length==1){
					onlineQuestions.setQuestionPhoto1(photos[0]);
				}
				list2.add(onlineQuestions);
			
		}
		
		return list2;
	}
	/**
	 * 设计题保存
	 * @param onlineQuestions
	 * @return
	 */
	public OnlineQuestions designPreserve(OnlineQuestions onlineQuestions) {
		StringBuffer resultAnswer = SpellOption.spellPhoto(onlineQuestions.getQuestionPhoto1(), onlineQuestions.getQuestionPhoto2());
		onlineQuestions.setQuestionPhoto(String.valueOf(resultAnswer));
		int  sb_length = resultAnswer.length();
		resultAnswer.delete(0,sb_length);
		onlineQuestions.setQuestionType(5);
		mapper.insertSelective(onlineQuestions);
		return onlineQuestions;
	}
	
}
