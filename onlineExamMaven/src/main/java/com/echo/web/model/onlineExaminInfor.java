package com.echo.web.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class onlineExaminInfor {
    private Integer studentId;

    private Date examinStrattime;

    private Date examinEndtime;

    private Integer studentTotalscope;

    private Integer examinFlag;

    private Integer examinTotalTime;

    private Integer paperId;
    
    private String StartTime1;
    private String StartTime2;
    
    private String EndTime1;
    private String EndTime2;
    
    
  
	public Date transformDate(String str1,String str2) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm");//字符串转为数据库要求的date类型
		Date dateValue = null;
		try {
			dateValue = sdf.parse(StartTime1+" "+StartTime2);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return dateValue;
		
	}

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public Date getExaminStrattime() {
        return examinStrattime;
    }

    public void setExaminStrattime(Date examinStrattime) {
        this.examinStrattime = examinStrattime;
    }
    
    public void setExaminStrattime(String EndTime1,String EndTime2) {
        this.examinStrattime = this.transformDate(EndTime1, EndTime2);
    }

    public Date getExaminEndtime() {
        return examinEndtime;
    }

    public void setExaminEndtime(Date examinEndtime) {
        this.examinEndtime = examinEndtime;
    }
    
    public void setExaminEndtime(String StartTime1,String StartTime2) {
        this.examinEndtime = this.transformDate(StartTime1, StartTime2);
    }

    public String getStartTime1() {
		return StartTime1;
	}

	public void setStartTime1(String startTime1) {
		StartTime1 = startTime1;
	}

	public String getStartTime2() {
		return StartTime2;
	}

	public void setStartTime2(String startTime2) {
		StartTime2 = startTime2;
	}

	public String getEndTime1() {
		return EndTime1;
	}

	public void setEndTime1(String endTime1) {
		EndTime1 = endTime1;
	}

	public String getEndTime2() {
		return EndTime2;
	}

	public void setEndTime2(String endTime2) {
		EndTime2 = endTime2;
	}

	public Integer getStudentTotalscope() {
        return studentTotalscope;
    }

    public void setStudentTotalscope(Integer studentTotalscope) {
        this.studentTotalscope = studentTotalscope;
    }

    public Integer getExaminFlag() {
        return examinFlag;
    }

    public void setExaminFlag(Integer examinFlag) {
        this.examinFlag = examinFlag;
    }

    public Integer getExaminTotalTime() {
        return examinTotalTime;
    }

    public void setExaminTotalTime(Integer examinTotalTime) {
        this.examinTotalTime = examinTotalTime;
    }

    public Integer getPaperId() {
        return paperId;
    }

    public void setPaperId(Integer paperId) {
        this.paperId = paperId;
    }
}