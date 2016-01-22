<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row col-md-9">

<!-- イベント一覧表示 -->
<div class="col-md-9 col-md-offset-4">
<div class="back">
<table class="table ">
<thead>
<tr class="info wide">
<td colspan="3">イベント一覧 </td></tr>
</thead>
<tbody>
<!-- イベント情報取得 -->
<c:forEach var="rs" items="${classList }">
<tr class="select">
<td class="classid">${rs.classID}</td>
<td class="classname" data-name="${rs.classID}">${rs.className}</td>
<td>
<div style="display:inline-flex">
<button type="button" class="btn btn-success edit_class "name="edit_class" ><i class="fa fa-pencil-square-o fa-2x"></i></button>

</div>
</td>

</tr>
</c:forEach>

</tbody>
</table>
</div>
</div>
</div>






