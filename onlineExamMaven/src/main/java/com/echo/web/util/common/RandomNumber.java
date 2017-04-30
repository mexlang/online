package com.echo.web.util.common;

import java.util.HashSet;
import java.util.Set;

public class RandomNumber {

	public static Set<Integer> randomNumber(Integer text_num1, int choiceCount) {
		Set<Integer> set = new HashSet();
		for(;text_num1>0;text_num1--){
			int id = (int) (Math.random()*(choiceCount-1));
			set.add(id);
		}
		
		return set;
	}

}
