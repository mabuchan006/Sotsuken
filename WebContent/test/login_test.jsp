<%@page import="timetable.db.masterInfo"%>
<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.Import"%>
<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:if test="${empty tchinf}">
	<c:redirect url="/manage/manage_top.jsp" />
</c:if>

<p>${tchinf.teacherName}さん、ようこそ
	<a href="/login/loginControl?state=logout">ログアウト</a>
</p>


<c:if test=  "${!empty Msg }">
<div class="alert alert-success alert-dismissible col-md-6 col-md-offset-3" role="alert">
	<button type="button" class="close" data-dismiss="alert" aria-label="閉じる"><span aria-hidden="true">×</span></button>
	<strong>success:</strong>${Msg }
</div>

</c:if>
