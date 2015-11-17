<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row ">

 <ul class="nav nav-tabs">
<li><a href="#tab1" data-toggle="tab">管理者メニュー</a></li>
<li><a href="#tab2" data-toggle="tab">時間割管理</a></li>
<li class="active"><a href="#tab2" data-toggle="tab">講師管理</a></li>
<li><a href="#tab2" data-toggle="tab">科目管理</a></li>
<li><a href="#tab2" data-toggle="tab">クラス管理</a></li>
<li><a href="time_manage.jsp" data-toggle="tab">コマ割管理</a></li>
</ul>
</div>
<div class="content-header">
<div id="logo">
<h1>講師管理</h1>
</div><!-- header -->

<!-- 登録処理 -->
<form action="/Sotsuken/ManageUpdate" method="get">

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
<button type="submit" class="btn btn-primary" id="regist_btn" name="regist_btn">登録</button>
</td>

</tr>
</table>
</form><!-- 登録終わり -->

<!-- 講師一覧表示 -->
<div class="col-md-6 col-md-offset-3">
<div class="back">
<table class="table ">
<thead>
<tr><td colspan="2">lecturers</td></tr>
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
<input type="submit" class="btn btn-danger" name="delete_btn" value="削除"/>
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

