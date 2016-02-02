<%@page import="manage.db.classDBManage"%>
<%@page import="timetable.db.masterInfo"%>
<%@page import="java.util.*"%>
<%@page import="manage.db.classInfo"%>
<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.Import"%>
<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	classDBManage classDBManage = new classDBManage();
	List<classInfo> classList = new ArrayList<classInfo>();
	classList = classDBManage.classDBSelect();
	System.out.println(classList.size());
	request.setAttribute("DropList", classList);
%>
#masterDropSQL<br />
<c:forEach var="dl" items="${DropList }">
	DROP TABLE if exists tbl_master_${dl.classID }timetable;<br />

</c:forEach>
<br />
#tempDropSQL<br />
<c:forEach var="dl" items="${DropList }">
	DROP TABLE if exists tbl_temp_${dl.classID }timetable;<br />
</c:forEach>