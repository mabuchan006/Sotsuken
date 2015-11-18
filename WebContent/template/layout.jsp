<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:if test="${js != null}">
<meta http-equiv="content-script-type" content="text/javascript" />
</c:if>

<title>${page_title}</title>

<c:if test="${js != null}">
<c:forEach var="itemjs" items="${js}">
<script type="text/javascript" src="${itemjs}"></script>
</c:forEach>
</c:if>

<c:if test="${css != null}">
<c:forEach var="itemcss" items="${css}">
<link href="${itemcss}" rel="stylesheet" type="text/css" >
</c:forEach>
</c:if>
</head>

<body>
<div class="row ">

 <ul class="nav nav-tabs">
<li><a href="#tab1" data-toggle="tab">管理者メニュー</a></li>
<li><a href="#tab2" data-toggle="tab">時間割管理</a></li>
<li><a href="../ManageUpdate?page=teacher_manage" data-toggle="tab">講師管理</a></li>
<li><a href="../ManageUpdate?page=subject_manage" data-toggle="tab">科目管理</a></li>
<li><a href="../ManageUpdate?page=class_manage" data-toggle="tab">クラス管理</a></li>
<li><a href="time_manage.jsp" data-toggle="tab">コマ割管理</a></li>
</ul>
</div>

	<jsp:include page="${content_page}" />


</body>
</html>