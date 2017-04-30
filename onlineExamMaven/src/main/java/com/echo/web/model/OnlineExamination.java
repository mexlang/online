package com.echo.web.model;

public class OnlineExamination {
    private Integer studentId;

    private Integer paperId;

    private Integer questionId;

    private Integer examintionResult;

    private Integer examintionScore;

    private String examintionAnswer;

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public Integer getPaperId() {
        return paperId;
    }

    public void setPaperId(Integer paperId) {
        this.paperId = paperId;
    }

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public Integer getExamintionResult() {
        return examintionResult;
    }

    public void setExamintionResult(Integer examintionResult) {
        this.examintionResult = examintionResult;
    }

    public Integer getExamintionScore() {
        return examintionScore;
    }

    public void setExamintionScore(Integer examintionScore) {
        this.examintionScore = examintionScore;
    }

    public String getExamintionAnswer() {
        return examintionAnswer;
    }

    public void setExamintionAnswer(String examintionAnswer) {
        this.examintionAnswer = examintionAnswer == null ? null : examintionAnswer.trim();
    }
}