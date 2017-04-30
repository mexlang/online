package com.echo.web.serivce;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.echo.web.mapper.OnlineClassMapper;
import com.echo.web.mapper.OnlineExaminAnalysisMapper;
import com.echo.web.mapper.OnlineExaminationMapper;
import com.echo.web.mapper.OnlineQuestionsMapper;
import com.echo.web.mapper.OnlineStudentMapper;
import com.echo.web.mapper.onlineTestpaperMapper;
import com.echo.web.model.OnlineClass;
import com.echo.web.model.OnlineExaminAnalysis;
import com.echo.web.model.OnlineExamination;
import com.echo.web.model.OnlineQuestions;
import com.echo.web.model.OnlineStudent;
import com.echo.web.model.onlineTestpaper;

@Service
public class StudentPapersService {
	@Resource
	private OnlineExaminationMapper examinationMapper;

	@Resource
	private onlineTestpaperMapper onlineTestpaperMapper;

	@Resource
	private OnlineStudentMapper onlinestudentMapper;

	@Resource
	private OnlineQuestionsMapper onlineQuestionsMapper;
	@Resource
	private OnlineClassMapper onlineclassMapper;
	@Resource
	private OnlineExaminAnalysisMapper analysisMapper;
	/**
	 * 选择题保存
	 * @param studentid
	 * @param paperId
	 * @param id
	 * @param value
	 */
	public void stuentwritePaper(Integer studentid,Integer paperId,Integer questionId, String value) {
		OnlineExamination examination = new OnlineExamination();
		int countnum = examinationMapper.selcetBystudentandPaperandQues(studentid,paperId,questionId);
		if(countnum==0){
			examination.setStudentId(studentid);
			examination.setPaperId(paperId);
			examination.setQuestionId(questionId);
			examination.setExamintionAnswer(value);
			examinationMapper.insertSelective(examination);
		}else{
			examination.setStudentId(studentid);
			examination.setPaperId(paperId);
			examination.setQuestionId(questionId);
			examination.setExamintionAnswer(value);
			examinationMapper.updatepaper(examination);
		}
		
	}

	/**
	 * 选择成绩分析
	 * @param studentId
	 * @return
	 */
	public List<onlineTestpaper> stuentwriteRecording(Integer studentId) {
		List<onlineTestpaper> onlineTestpaperList =  onlineTestpaperMapper.selectByStudentIdForPage(studentId);

		return onlineTestpaperList;
	}

	public List<OnlineQuestions> paperShowAnswer(Integer studentId, Integer paperId) {
		List<OnlineQuestions> OnlineQuestionsList= onlineQuestionsMapper.selectByPaperId(paperId);


		return OnlineQuestionsList;
	}
	/**
	 * 查看学生做过的试卷
	 * @param studentId
	 * @return
	 */
	public List<onlineTestpaper> stuentHasWrited(Integer studentId) {
		List<onlineTestpaper> onlilist = onlineTestpaperMapper.selectByStudentForTeset(studentId);

		return onlilist;
	}
	/**
	 * 查看学生个人信息
	 * @param studentId
	 * @return
	 */
	public OnlineStudent studnetInformation(Integer studentId) {
		OnlineStudent studentinformation = onlinestudentMapper.selectByPrimaryKey(studentId);

		return studentinformation;
	}
	/**
	 * 查看学生班级
	 * @param studentId
	 * @return
	 */
	public OnlineClass studentClass(Integer studentId) {
		OnlineClass studntclass = onlineclassMapper.selectClassByStudentId(studentId);

		return studntclass;
	}

	public int updatePassword(Integer studentId, String password1,
			String password2) {
		int result =0;
		OnlineStudent onlinstudent = onlinestudentMapper.selectByPrimaryKey(studentId);
		if(onlinstudent!=null){
			String pass1 = onlinstudent.getStudentPasswd();
			if(password1.equals(pass1)){
				onlinstudent.setStudentPasswd(password2);
				result = onlinestudentMapper.updateByPrimaryKeySelective(onlinstudent);
			}else{
				result=0;
			}
		}
		return 2;
	}
	/**
	 * 存储学生分析
	 * @param entersystem
	 * @return
	 */
	public int savestudentmace(Integer studentid,Integer paperId,String entersystem) {
		OnlineExaminAnalysis analysis = new OnlineExaminAnalysis();
		analysis.setStudentId(studentid);
		analysis.setPaperId(paperId);
		analysis.setStudentDescription(entersystem);
		int result = analysisMapper.insertSelective(analysis);
		return result;
	}

	public int stuenttinakongAnswer(Integer studentid,Integer paperId, Integer tiankongid,
			String tiankong) {
		OnlineExamination examination = new OnlineExamination();
		examination.setStudentId(studentid);
		examination.setPaperId(paperId);
		examination.setQuestionId(tiankongid);
		examination.setExamintionAnswer(tiankong);
		int result = examinationMapper.insertSelective(examination);

		return result;
	}


}
