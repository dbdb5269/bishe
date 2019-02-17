package com.ly.ssm.utils;


import com.ly.ssm.model.User;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpSession;

/**
 * 存取当前登录用户的工具类
 * 
 * @author Administrator
 * 
 */
public class UserContext {

	public static final String CURRENT_LOGININFO_IN_SESSION = "user";

	private static HttpSession getSession() {
		return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest().getSession();
	}

	public static void putCurrent(User current) {
		getSession().setAttribute(CURRENT_LOGININFO_IN_SESSION, current);
	}

	public static User getCurrent() {
		return (User) getSession().getAttribute(CURRENT_LOGININFO_IN_SESSION);
	}

	public static void removeCurrent() {
		getSession().removeAttribute(CURRENT_LOGININFO_IN_SESSION);
	}
}
