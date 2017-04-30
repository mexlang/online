package com.echo.web.util.mybatis;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisUtils {
	 
	/***
	 * dataSourceUtil 在项目的一个生命周期内 仅仅初始化一次
	 */
	 private  static  MybatisUtils mybatisUtils;
	 
	  private   SqlSessionFactory  sessionFactory;
		public void  initSqlSessionFactory() throws IOException {
			synchronized (SqlSessionFactory.class) {
				if(sessionFactory==null){
					String resource = "mybatis-config.xml"; 
					Reader reader = Resources.getResourceAsReader(resource); 
					sessionFactory = new SqlSessionFactoryBuilder().build(reader);	
					
				}
	     	}
		}
	
		/***
		 * 对外提供一个数据源的 连接
		 * @return
		 * @throws SQLException
		 * @throws IOException 
		 */
		public  SqlSession getConnection() throws Exception{
			 if(sessionFactory==null){
				 initSqlSessionFactory();
			 }
			return 	sessionFactory.openSession();
			
		}
	
	
}
