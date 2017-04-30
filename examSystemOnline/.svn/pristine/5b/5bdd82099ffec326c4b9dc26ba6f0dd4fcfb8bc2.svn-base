package com.echo.web.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.junit.experimental.theories.Theory;
import org.springframework.stereotype.Component;


/**
 * 为了更好的服务于用户 更好的搜集客户登录信息 
 * 
 * 
 * 故此对登录方法进行响应业务增强
 *   1：登录 郎朗 @人民币
 * @author tangsixiang
 *
 */
/**
 * 
 作为aop 切面类 必须作为spring 一个组件为 为前提条件
 *
 */
@Component //组件注解
@Aspect //声明一个切面类的注解
public class OnLineAspectLogin {

	
	/**
	 * ArithmeticCalculator接口中声明的所有方法。
		第一个“*”代表任意修饰符及任意返回值。
		第二个“*”代表任意方法。
		“..”匹配任意数量、任意类型的参数。
		若目标类、接口与该切面类在同一个包中可以省略包名。
	 * @param joinpoint
	 */
	//声明通知的注解 (里面配置信息 是 作为切面类的的切入点)
	//execution([权限修饰符] [返回值类型] [简单类名/全类名] [方法名]([参数列表]))
//	@Before(value="execution(* com.echo.web.serivce.BkUserService.*(..))")
	//1 execution(public * com.echo.web.serivce.BkUserService.*(..))
	//2 execution(public double com.echo.web.serivce.BkUserService.*(..))
	// 3 execution(public * com.echo.web.serivce.BkUserService.*(double, ..))
	public void loginOnlineUserAspectBeforePiontCut(JoinPoint joinpoint){
	System.out.println(joinpoint.getSignature().getName());
	 System.out.println(joinpoint.getArgs()[0]+"-----在方法执行前开始执行了");
		
	}
	
	//@After(value="execution(* com.echo.web.serivce.BkUserService.*(..))")
	public void loginOnlineUserAspectAfterPiontCut(JoinPoint joinpoint){
	System.out.println("-------------我是后置通知  方法执行完以后 ---------"+joinpoint);
		
	}
	
//	@AfterReturning(pointcut="execution(* com.echo.web.serivce.BkUserService.*(..))",returning="result")
	public void loginOnlineUserAspectAfterPiontCut(JoinPoint joinpoint,Object result){
	System.out.println("-------------我是后置放回通知  方法执行完以后 ---------"+joinpoint);
	System.out.println("拦截的放回结果为："+result);
		
	}
	@AfterThrowing (pointcut="execution(* com.echo.web.serivce.BkUserService.*(..))",throwing="e")
	public void loginOnlineUserAspectAfterThrowsPiontCut(JoinPoint joinpoint,ArithmeticException e){
/*	System.out.println("-------------我是后置 异常通知 方法执行完以后 ---------"+joinpoint);
	System.out.println("拦截的放回结果为：+我要发送邮件通知！");
	e.printStackTrace();*/
		 System.out.println("----异常通知-----");
		   System.out.print("."+joinpoint.getSignature().getName());
	e.printStackTrace();
	System.out.println("The method " + joinpoint.getSignature().getName() + " occurs exception: " + e);
	System.out.println("----异常通知- end----");
	}
}
