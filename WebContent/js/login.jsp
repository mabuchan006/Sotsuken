<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>ログイン画面(ポップ)</title>
</head>
<body>

	<form name="login">
		ID:<input type="text" name="inId" value="" ><br>
		パスワード:<input type="text" name="inPass" value="" ><br>
		<input type="button" value="ログイン" onClick="login.js">
		<input type="button" value="キャンセル" onClick="top.jsp">
	</form>

</body>
</html>