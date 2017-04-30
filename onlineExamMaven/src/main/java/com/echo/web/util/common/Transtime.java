package com.echo.web.util.common;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class Transtime {
	
	
	  
		public  Date transformDate(String str1,String str2) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm");//字符串转为数据库要求的date类型
			Date dateValue = null;
			try {
				dateValue = sdf.parse(str1+" "+str2);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			return dateValue;
			
		}

}
