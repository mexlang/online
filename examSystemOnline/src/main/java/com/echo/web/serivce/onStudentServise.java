package com.echo.web.serivce;


import java.util.List;

import javax.annotation.Resource;






import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.echo.web.mapper.OnlineStudentMapper;
import com.echo.web.model.OnlineStudent;


/**
 * 
 * 
 * @author cui
 *
 */
@Service
public class onStudentServise {
	@Resource
	private OnlineStudentMapper mapper;
//	public String loginJudge(OnlineStudent onlineStudent) {
//		try {
//			Integer loginId = onlineStudent.getStudentId();
//			SqlSession sqlsession = mybatisUtils.getConnection();
//			OnlineStudentMapper mapper = sqlsession.getMapper(OnlineStudentMapper.class);
//			OnlineStudent student = mapper.selectByPrimaryKey(loginId);
//			if(!student.getStudentId().equals("")){
//				String loginName = onlineStudent.getStudentName();
//				String loginPasswd = onlineStudent.getStudentPasswd();
//				if(!loginName.equals("")&&!loginPasswd.equals("")){
//					String dataName = student.getStudentName();
//					String dataPasswd = student.getStudentPasswd();
//					if(loginName.equals(dataName)&&loginPasswd.equals(dataPasswd)){
//						return "1";
//					}
//				}else{
//					return "0";//密码不正确
//				}
//			}
//			
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return "2";//账号不正确
//		
//	}
	/**
	 * 登陆查询
	 * @param studentId
	 * @param studentName
	 * @param studentPasswd
	 * @return
	 */
	public String loginJudge(Integer studentId,
			String studentPasswd) {
		OnlineStudent student = null;
		student = mapper.selectByStudent(studentId);
		if(student!=null){
			String dataName = student.getStudentName();
			String dataPasswd = student.getStudentPasswd();
			if(dataPasswd.equals(studentPasswd)){
				return "1";
			}else{
				return "0";//密码不正确
			}
		}
		return "2";//账号不正确
	}
	/**
	 * 单个查询学生信息
	 * @param studentId
	 * @return
	 */
	public OnlineStudent selectStudent(Integer studentId) {
		OnlineStudent studentInformation = mapper.selectByPrimaryKey(studentId);
		
		return studentInformation;
	}
	/**
	 * 修改学生信息
	 * @param onlineStudent
	 * @return
	 */
	public int updateByPrimaryKey(OnlineStudent onlineStudent) {
			int result = mapper.updateByPrimaryKeySelective(onlineStudent);
		return result;
	}
	/**
	 * 增加学生信息
	 * @param onlineStudent
	 * @return
	 */
	public int insert(OnlineStudent onlineStudent) {
		SqlSession sqlsession;
		int result = 0;
			result = mapper.insert(onlineStudent);
		return result;
	}
	/**
	 * 删除学生信息
	 * @param onlineStudent
	 * @return
	 */
	public int deleteByPrimaryKey(OnlineStudent onlineStudent) {
		int result = 0;
			result = mapper.deleteByPrimaryKey(onlineStudent.getStudentId());
		return result;
	}
	/**
	 * 查询所有学生信息
	 * 
	 * @return list<OnlineStudent>
	 * mexlang
	 */
	public List<OnlineStudent> selectAllStudent() {
		List<OnlineStudent> result  = mapper.selectAllStudent();
		return result;
	}
	
	/**
	 * 分页查询学生信息
	 * 
	 * @return list<OnlineStudent>
	 * mexlang
	 */
	public List<OnlineStudent> selectAllStudentForPage(Integer StartPage,Integer pageSize) {
		List<OnlineStudent> result  = mapper.selectStudentForPage(StartPage, pageSize);
		return result;
	}
	
}
