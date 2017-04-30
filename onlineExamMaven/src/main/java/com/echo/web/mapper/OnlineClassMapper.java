package com.echo.web.mapper;

import java.util.List;

import com.echo.web.model.OnlineClass;

public interface OnlineClassMapper {
    int deleteByPrimaryKey(Integer classId);

    int insert(OnlineClass record);

    int insertSelective(OnlineClass record);

    OnlineClass selectByPrimaryKey(Integer classId);

    int updateByPrimaryKeySelective(OnlineClass record);

    int updateByPrimaryKey(OnlineClass record);
    
    List<OnlineClass> queryAllOnlineClass();
}