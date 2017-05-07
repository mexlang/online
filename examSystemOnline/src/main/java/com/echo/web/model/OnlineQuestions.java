package com.echo.web.model;


import java.util.Date;

import org.springframework.stereotype.Component;

@Component  //声明为组件
public class OnlineQuestions {

	private Integer questionId;

    @Override
	public String toString() {
		return "OnlineQuestions [questionId=" + questionId + ", questionType="
				+ questionType + ", questionName=" + questionName
				+ ", questionDifficulty=" + questionDifficulty
				+ ", questionAnswer=" + questionAnswer + ", questionOption="
				+ questionOption + ", questionFlag=" + questionFlag
				+ ", questionCreatetime=" + questionCreatetime
				+ ", questionEffective=" + questionEffective
				+ ", questionChater=" + questionChater + ", questionPhoto="
				+ questionPhoto + ", questionPhoto1=" + questionPhoto1
				+ ", questionPhoto2=" + questionPhoto2 + ", optionA=" + optionA
				+ ", optionB=" + optionB + ", optionC=" + optionC
				+ ", optionD=" + optionD + ", questionScore=" + questionScore
				+ "]";
	}

	private Integer questionType;

    private String questionName;

    private String questionDifficulty;

    private String questionAnswer;

    private String questionOption;

    private String questionFlag;

    private Date questionCreatetime;

    private Boolean questionEffective;
    
    private String questionChater;
    
    private String questionPhoto;
    
    private String questionPhoto1;
    
    private String questionPhoto2;
    
    private String questionUserAnswer;
    
    private String examintionResult;  //试卷批改结果
    
    
    
    public String getExamintionResult() {
		return examintionResult;
	}

	public void setExamintionResult(String examintionResult) {
		this.examintionResult = examintionResult;
	}

	public String getQuestionUserAnswer() {
		return questionUserAnswer;
	}

	public void setQuestionUserAnswer(String questionUserAnswer) {
		this.questionUserAnswer = questionUserAnswer;
	}

	public String getQuestionPhoto1() {
		return questionPhoto1;
	}

	public void setQuestionPhoto1(String questionPhoto1) {
		this.questionPhoto1 = questionPhoto1;
	}

	public String getQuestionPhoto2() {
		return questionPhoto2;
	}

	public void setQuestionPhoto2(String questionPhoto2) {
		this.questionPhoto2 = questionPhoto2;
	}

	private String optionA;
    
    private String optionB;
    
    private String optionC;
    
    private String optionD;
    
    private Integer questionScore;
    public Integer getQuestionScore() {
		return questionScore;
	}

	public void setQuestionScore(Integer questionScore) {
		this.questionScore = questionScore;
	}

	public String getOptionA() {
		return optionA;
	}

	public void setOptionA(String optionA) {
		this.optionA = optionA;
	}

	public String getOptionB() {
		return optionB;
	}

	public void setOptionB(String optionB) {
		this.optionB = optionB;
	}

	public String getOptionC() {
		return optionC;
	}

	public void setOptionC(String optionC) {
		this.optionC = optionC;
	}

	public String getOptionD() {
		return optionD;
	}

	public void setOptionD(String optionD) {
		this.optionD = optionD;
	}

	public String getQuestionPhoto() {
		return questionPhoto;
	}

	public void setQuestionPhoto(String questionPhoto) {
		this.questionPhoto = questionPhoto;
	}

	public String getQuestionChater() {
		return questionChater;
	}

	public void setQuestionChater(String questionChater) {
		this.questionChater = questionChater;
	}

	public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public Integer getQuestionType() {
        return questionType;
    }

    public void setQuestionType(Integer questionType) {
        this.questionType = questionType;
    }

    public String getQuestionName() {
        return questionName;
    }

    public void setQuestionName(String questionName) {
        this.questionName = questionName == null ? null : questionName.trim();
    }

    public String getQuestionDifficulty() {
        return questionDifficulty;
    }

    public void setQuestionDifficulty(String questionDifficulty) {
        this.questionDifficulty = questionDifficulty;
    }

    public String getQuestionAnswer() {
        return questionAnswer;
    }

    public void setQuestionAnswer(String questionAnswer) {
        this.questionAnswer = questionAnswer == null ? null : questionAnswer.trim();
    }

    public String getQuestionOption() {
        return questionOption;
    }

    public void setQuestionOption(String questionOption) {
        this.questionOption = questionOption == null ? null : questionOption.trim();
    }

    public String getQuestionFlag() {
        return questionFlag;
    }

    public void setQuestionFlag(String questionFlag) {
        this.questionFlag = questionFlag == null ? null : questionFlag.trim();
    }

    public void setQuestionCreatetime(Date questionCreatetime) {
		this.questionCreatetime = questionCreatetime;
	}
    public Date getQuestionCreatetime() {
		return questionCreatetime;
	}

	public Boolean getQuestionEffective() {
        return questionEffective;
    }

    public void setQuestionEffective(Boolean questionEffective) {
        this.questionEffective = questionEffective;
    }
}