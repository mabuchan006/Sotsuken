<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/cookie/get_cookie.jsp" />
<c:if test = " ${!empty getCookie } ">
<script>alert("ok");</script>

</c:if>
  <!-- Start Logo Section --><!-- ヘッダー部分 -->
        <section id="logo-section" class="text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-md-offset-8 text-right">

                            <button type="button" class="favolite" >
                            favolite
                            <i class="fa fa-star"></i>
                            </button>


                    </div>
                </div>
            </div>
        </section>

<div class="row col-md-9">

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
<form action="/Sotsuken/ManageUpdate?page=class_manage" method="get">

<table class="col-md-9 col-md-offset-3" id="first_table">
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
<form action="/Sotsuken/ManageUpdate?page=class_manage" method="get">
<input type="hidden" name = "classID" value="${rs.classID }" />
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


