package com.echo.web.serivce;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.echo.web.mapper.OnlineQuestionsMapper;
import com.echo.web.mapper.onlineQuestionsTestpaperMapper;
import com.echo.web.mapper.onlineTestpaperMapper;
import com.echo.web.model.OnlineQuestions;
import com.echo.web.model.onlineTestpaper;

@Service
public class StudentExamService {
	@Autowired
	private onlineTestpaperMapper onlineTestpaperMapper;
	@Autowired
	private onlineQuestionsTestpaperMapper onlineQuestionsTestpaperMapper;
	@Autowired
	private OnlineQuestionsMapper onlineQuestionsMapper;
	/**
	 * 查询试卷个数
	 * @return
	 */
	public int queryStudntForChapterCount() {
		int result = onlineTestpaperMapper.queryStudntForChapterCount();
		
		return result;
	}
	/**
	 * 分页查询试卷内容
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	public List<onlineTestpaper> queryStudentForPage(int currentPage, Integer pageSize) {
		
		List<onlineTestpaper> list = onlineTestpaperMapper.queryTestForpape(currentPage,pageSize);
		
		return list;
	}
	/**
	 * 查询试题
	 * @param paperId
	 * @return
	 */
	public List<OnlineQuestions> testPaperShow(Integer paperId) {
		
	List<Integer> listQuestionId = 	onlineQuestionsTestpaperMapper.selectPaperShowQuestion(paperId);
	List<OnlineQuestions>	 listQuestion =  new ArrayList<OnlineQuestions>();
	for (Integer integer : listQuestionId) {
			OnlineQuestions onlineQuestion = onlineQuestionsMapper.selectByPrimaryKey(integer);
			listQuestion.add(onlineQuestion);
		}
		return listQuestion;
	}
	/**
	 * 通过id查询试卷内容
	 * @param paperId
	 * @return
	 */
	
	public onlineTestpaper selectPaperId(Integer paperId) {
		onlineTestpaper testPaper = onlineTestpaperMapper.selectByPrimaryKey(paperId);
		return testPaper;
	}
	
}
