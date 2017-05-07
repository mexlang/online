package com.echo.web.mapper;

import java.util.List;



import org.apache.ibatis.annotations.Param;

import com.echo.web.model.OnlineExamination;
import com.echo.web.model.onlineTestpaper;
import com.sun.org.glassfish.gmbal.ParameterNames;

public interface OnlineExaminationMapper {
    int insert(OnlineExamination record);
    int insertSelective(OnlineExamination record);
    int saveStudentSwer(Integer studentId,Integer id,String value);
	int selcetBystudentandPaperandQues(@Param("studentId")Integer studentId, @Param("paperId")Integer paperId,
			@Param("questionId")Integer questionId);
	void updatepaper(OnlineExamination examination);
	
	List<OnlineExamination> selectAllBypaperId (Integer studentId);
	List<OnlineExamination> selectAll ();

	
}