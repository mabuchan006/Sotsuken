<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row ">

<c:if test=  "${!empty Msg }">
<div class="alert alert-success alert-dismissible col-md-6 col-md-offset-3" role="alert">
	<button type="button" class="close" data-dismiss="alert" aria-label="閉じる"><span aria-hidden="true">×</span></button>
	<strong>success:</strong>${Msg }
</div>

</c:if>
<c:if test=  "${!empty err_Msg }">
<div class="alert alert-danger alert-dismissible col-md-6 col-md-offset-3" role="alert">
	<button type="button" class="close" data-dismiss="alert" aria-label="閉じる"><span aria-hidden="true">×</span></button>
	<strong>error:</strong>${err_Msg }
</div>

</c:if>

<!-- 登録処理 -->
<form action="/Sotsuken/ManageUpdate?page=teacher_manage" method="get">

<table class="col-md-6 col-md-offset-3" id="first_table">
<tr>

<td class="col-md-4">
<!-- 名前入力 -->
<label for="teacherName" class="labels">名前</label>
<input type="text" class="form-control" id="teacherName" name="teacherName" >
</td>

<td class="col-md-4">
<!-- pass入力 -->
<label for="password" class="labels">パスワード</label>
<input type="password" class="form-control" name="password" >
</td>

<td class="col-md-4">
<!-- 登録ボタン -->
<label for="password" class="empty">________</label>
<input type="submit" class="btn btn-primary" id="regist_btn" name="regist_teacher" value="登録"/>
</td>

</tr>
</table>
</form><!-- 登録終わり -->

<!-- 講師一覧表示 -->
<div class="col-md-6 col-md-offset-3">
<div class="back">
<table class="table ">
<thead>
<tr><td colspan="2">講師一覧</td><td>( ${cnt } 件)</td></tr>
</thead>
<tbody>
<!-- 講師情報取得 -->
<c:forEach var="teacher" items="${teacherList}">
<tr class="select">
<td>${ teacher.teacherName }</td>
<td>
<!-- 削除用フォーム -->
<form action="/Sotsuken/ManageUpdate" method="get">
<input type="hidden" name = "teacher_id" value="${ teacher.teacherID }" />
<input type="hidden" name = "teacherName" value="${ teacher.teacherName }" />
<input type="submit" class="btn btn-danger" name="delete_teacher" value="削除"/>
</form>
<!-- 削除 -->
</td>

</tr>
</c:forEach>

</tbody>
</table>
</div>
</div>
</div>



