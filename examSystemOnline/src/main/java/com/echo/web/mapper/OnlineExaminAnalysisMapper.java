package com.echo.web.mapper;

import com.echo.web.model.OnlineExaminAnalysis;

public interface OnlineExaminAnalysisMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OnlineExaminAnalysis record);

    int insertSelective(OnlineExaminAnalysis record);

    OnlineExaminAnalysis selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OnlineExaminAnalysis record);

    int updateByPrimaryKey(OnlineExaminAnalysis record);
}