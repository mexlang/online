package com.echo.web.serivce;


import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.echo.web.mapper.bkuserManagerMapper;
import com.echo.web.model.bkuserManager;

@Service
public class BkUserService {
	@Resource
	private bkuserManagerMapper mapper;
	/**
	 * 管理员登陆
	 * @param buserManager
	 * @return
	 */
	public String loginJudge(bkuserManager buserManager) {
				Integer id = buserManager.getManagerId();
				
				bkuserManager resultId = mapper.selectByPrimaryKey(id);
				if(!resultId.getManagerId().equals("")){
			
					String passwordLogin = buserManager.getManagerPasswd();
					String passwordData = resultId.getManagerPasswd();
					if(!passwordLogin.equals("")){
						
						if(passwordLogin.equals(passwordData)){
							
							return "1";
						}
					}else{
						return "0";//密码不正确
					}
				}
			return "2";//账号不正确
	
	
	}
	/**
	 * 分页查询
	 * @param startId
	 * @param page
	 * @return 
	 */
	public List<BkUserService> selectBkUser(Integer startId, Integer page) {
		List<BkUserService> bkUserPage = null;
			bkUserPage =  mapper.selectBkUserPage(startId,page);
		
		return bkUserPage;
				
	}
	public void saveBkUser(bkuserManager bkuserManager) {
			mapper.insertSelective(bkuserManager);
	}
	public void updateBkUser(bkuserManager bkuserManager) {
			mapper.updateByPrimaryKeySelective(bkuserManager);
	}

}
	
