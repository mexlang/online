package com.echo.web.mapper;


import java.util.List;

import com.echo.web.model.OnlineQuestions;


public interface OnlineQuestionsMapper {
	int deleteByPrimaryKey(Integer questionId);

	int insert(OnlineQuestions record);

	int insertSelective(OnlineQuestions record);

	OnlineQuestions selectByPrimaryKey(Integer questionId);

	int updateByPrimaryKeySelective(OnlineQuestions record);

	int updateByPrimaryKey(OnlineQuestions record);

	OnlineQuestions selectBychapter(String questionChapter);

	int queryChoiceForPageCount();
	List<OnlineQuestions> queryChoiceForPage(int startPage, Integer pageSize);

	int queryDecideForPageCount();
	List<OnlineQuestions> queryDecideForPage(int startPage, Integer pageSize);

	int queryBlankForPageCount();
	List<OnlineQuestions> queryBlankForPage(int startPage, Integer pageSize);

	int querySimpleForPageCount();
	List<OnlineQuestions> querySimpleForPage(int startPage, Integer pageSize);


	int queryDesignForPageCount();
	List<OnlineQuestions> queryDesignForPage(int startPage, Integer pageSize);

	List<OnlineQuestions> queryOnlineQuestionsToShow(Integer type,Integer paperId);


	List<Integer> selectAllChoiceId();

	List<Integer> selectAllDecideId();

	List<Integer> selectAllBlankId();

	List<Integer> selectAllSimpleId();

	List<Integer> selectAllDesignId();

	List<OnlineQuestions> selectByPaperId(Integer paperId);



}