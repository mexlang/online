package com.echo.web.mapper;

import java.util.List;

import com.echo.web.model.onlineQuestionsTestpaper;

public interface onlineQuestionsTestpaperMapper {
    int insert(onlineQuestionsTestpaper record);

    int insertSelective(onlineQuestionsTestpaper record);
    
//    查询所有试卷Id
    List<Integer> queryonlineQuestionsTestpaperByGroup();
//查询试卷题库
	List<Integer> selectPaperShowQuestion(Integer paperId);
  
}