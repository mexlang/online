package com.echo.web.mapper;


import java.util.List;

import com.echo.web.model.bkuserManager;
import com.echo.web.serivce.BkUserService;


public interface bkuserManagerMapper {
    int deleteByPrimaryKey(Integer managerId);

    int insert(bkuserManager record);

    int insertSelective(bkuserManager record);

    bkuserManager selectByPrimaryKey(Integer managerId);

    int updateByPrimaryKeySelective(bkuserManager record);

    int updateByPrimaryKey(bkuserManager record);

	List<BkUserService> selectBkUserPage(Integer startId, Integer page);
}