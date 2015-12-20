<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
//クッキー取得
Cookie cookies[] = request.getCookies();
Cookie getCookie = null;
if(cookies != null){
	for(Cookie cookie : cookies){
		if(cookie.getName().equals("cookieUrl")){
			getCookie = cookie;
		}//if
	}//for
}//if
if(getCookie!=null){
request.setAttribute("getCookie", getCookie);
}

%>