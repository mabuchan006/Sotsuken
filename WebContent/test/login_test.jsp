<%@page import="timetable.db.masterInfo"%>
<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.Import"%>
<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:if test="${empty teacherInfo}">
	<c:redirect url="/manage/manage_top.jsp" />
</c:if>

<p>${teacherInfo.teacherName}さん、ようこそ
	<a href="/login/loginControl?state=logout">ログアウト</a>
</p>
