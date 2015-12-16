<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

//クッキーに格納するURIをエンコード
String url = URLEncoder.encode(request.getRequestURI());
//クッキーcookieUrl作成
Cookie cookie = new Cookie("cookieUrl",url);
//クッキーの有効期限設定 とりま1か月
cookie.setMaxAge(30 * 24 * 60 * 60);
//クッキー発行
response.addCookie(cookie);

%>