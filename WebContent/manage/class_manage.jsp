<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="path/to/bootstrap-editable/css/bootstrap-editable.css" rel="stylesheet">
<script src="path/to/bootstrap-editable/js/bootstrap-editable.min.js"></script>

<c:if test= "${!empty Msg }">
<script>
toastSelect("success","${Msg }")</script>
</c:if>

<c:if test=  "${!empty err_Msg }">
<script>toastSelect("error","${err_Msg }")</script>
</c:if>

<div class="row col-md-9">
<!-- 登録処理 -->
<form action="/Sotsuken/ManageUpdate" method="post">
<input type="hidden"name="page" value="class_manage">
<table class="col-md-9 col-md-offset-3" id="first_table">
<tr>

<td class="col-md-4">
<!-- 名前入力 -->
<label for="ClassID" class="labels">クラス</label>
<input type="text" class="form-control" id="classID" name="classID" >
</td>

<td class="col-md-4">
<!-- pass入力 -->
<label for="ClassName" class="labels">専攻名</label>
<input type="text" class="form-control" name="className" >
</td>

<td class="col-md-4">
<!-- 登録ボタン -->
<label for="empty" class="empty">________</label>
<button type="submit" class="btn btn-primary" id="regist_btn" name="regist_class">登録</button>
</td>

</tr>
</table>
</form><!-- 登録終わり -->

<!-- クラス一覧表示 -->
<div class="col-md-12 col-md-offset-3">
<div class="back">
<table class="table ">
<thead>
<tr class="info wide">
<td colspan="3">クラス一覧   ( ${cnt } 件)</td></tr>
</thead>
<tbody>
<!-- クラス情報取得 -->
<c:forEach var="rs" items="${classList }">
<tr class="select">
<td>${rs.classID}</td>
<td>${rs.className}</td>
<td>
<!-- 削除用フォーム -->
<form action="/Sotsuken/ManageUpdate?page=class_manage" method="post">
<input type="hidden" name = "classID" value="${rs.classID }" />
<input type="hidden" name = "className" value="${rs.className }" />
<button type="submit" class="btn btn-danger"name="delete_class" ><i class="fa fa-trash-o fa-2x"></i></button>
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






