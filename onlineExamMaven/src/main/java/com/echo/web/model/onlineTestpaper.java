package com.echo.web.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Component;

public class onlineTestpaper {
    private Integer paperId;

    private String pagerName;

    private Integer teacherId;

    private Date pagerCreatetime;

    private Integer pagerFlag;

    private String pagerYear;   //考试班级

    private Date pagerStarttime;

    private Date pagerEndtime;

    private Integer pagerScore;

    private Integer pagerTotaltime;

    private String pagerResults;

    private Integer managerId;

    private Date createTime;

    private String paperDifficulty;
    
    private onlineExaminInfor examinInfor;

    public onlineExaminInfor getExaminInfor() {
		return examinInfor;
	}

	public void setExaminInfor(onlineExaminInfor examinInfor) {
		this.examinInfor = examinInfor;
	}

	private String StartTime1;
    private String StartTime2;
    
    private String EndTime1;
    private String EndTime2;
    
    private Integer totalScore;

	
	   
	    public Integer getTotalScore() {
		return totalScore;
	}

	public void setTotalScore(Integer totalScore) {
		this.totalScore = totalScore;
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


    
    public Integer getPaperId() {
        return paperId;
    }

    public void setPaperId(Integer paperId) {
        this.paperId = paperId;
    }

    public String getPagerName() {
        return pagerName;
    }

    public void setPagerName(String pagerName) {
        this.pagerName = pagerName == null ? null : pagerName.trim();
    }

    public Integer getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }

    public Date getPagerCreatetime() {
        return pagerCreatetime;
    }

    public void setPagerCreatetime(Date pagerCreatetime) {
        this.pagerCreatetime = pagerCreatetime;
    }

    public Integer getPagerFlag() {
        return pagerFlag;
    }

    public void setPagerFlag(Integer pagerFlag) {
        this.pagerFlag = pagerFlag;
    }

    public String getPagerYear() {
        return pagerYear;
    }

    public void setPagerYear(String pagerYear) {
        this.pagerYear = pagerYear == null ? null : pagerYear.trim();
    }

    public Date getPagerStarttime() {
        return pagerStarttime;
    }

    public void setPagerStarttime(Date pagerStarttime) {
        this.pagerStarttime = pagerStarttime;
    }

    public Date getPagerEndtime() {
        return pagerEndtime;
    }

    public void setPagerEndtime(Date pagerEndtime) {
        this.pagerEndtime = pagerEndtime;
    }

    public Integer getPagerScore() {
        return pagerScore;
    }

    public void setPagerScore(Integer pagerScore) {
        this.pagerScore = pagerScore;
    }

    public Integer getPagerTotaltime() {
        return pagerTotaltime;
    }

    public void setPagerTotaltime(Integer pagerTotaltime) {
        this.pagerTotaltime = pagerTotaltime;
    }

    public String getPagerResults() {
        return pagerResults;
    }

    public void setPagerResults(String pagerResults) {
        this.pagerResults = pagerResults == null ? null : pagerResults.trim();
    }

    public Integer getManagerId() {
        return managerId;
    }

    public void setManagerId(Integer managerId) {
        this.managerId = managerId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getPaperDifficulty() {
        return paperDifficulty;
    }

    public void setPaperDifficulty(String paperDifficulty) {
        this.paperDifficulty = paperDifficulty == null ? null : paperDifficulty.trim();
    }
}