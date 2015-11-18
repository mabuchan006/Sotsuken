<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row ">

<div class="content-header">
<div id="logo">
<h1>クラス管理</h1>
</div>
</div>


<!-- header -->

<!-- 登録処理 -->
<form action="/Sotsuken/ManageUpdate" method="get">

<table class="col-md-6 col-md-offset-3" id="first_table">
<tr>

<td class="col-md-4">
<!-- 名前入力 -->
<label for="ClassID" class="labels">クラス</label>
<input type="text" class="form-control" id="ClassID" name="ClassID" >
</td>

<td class="col-md-4">
<!-- pass入力 -->
<label for="ClassName" class="labels">専攻名</label>
<input type="text" class="form-control" name="ClassName" >
</td>

<td class="col-md-4">
<!-- 登録ボタン -->
<label for="password" class="empty">________</label>
<button type="submit" class="btn btn-primary" id="regist_btn" name="regist_class">登録</button>
</td>

</tr>
</table>
</form><!-- 登録終わり -->

<!-- クラス一覧表示 -->
<div class="col-md-6 col-md-offset-3">
<div class="back">
<table class="table ">
<thead>
<tr><td colspan="2">class</td></tr>
</thead>
<tbody>
<!-- クラス情報取得 -->
<c:forEach var="class" items="${classList }">
<tr class="select">
<td>${class.classID }</td>
<td>
<!-- 削除用フォーム -->
<form action="/Sotsuken/ManageUpdate" method="get">
<input type="hidden" name = "classID" value="${class.classID }" />
<input type="submit" class="btn btn-danger" name="delete_class" value="削除"/>
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

