<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  <!-- Start Logo Section --><!-- ヘッダー部分 -->
        <section id="logo-section" class="text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-md-offset-8 text-right">

                            <button type="button" class="favolite" id="falseCookie" >
                            favolite
                            <i class="fa fa-star"></i>
                            </button>


                    </div>
                </div>
            </div>
        </section>

<div class="row col-md-9">
<c:if test=  "${!empty Msg }">
<div class="alert alert-success alert-dismissible col-md-9 col-md-offset-3" role="alert">
	<button type="button" class="close" data-dismiss="alert" aria-label="閉じる"><span aria-hidden="true">×</span></button>
	<strong>success:</strong>${Msg }
</div>
</c:if>

<c:if test=  "${!empty err_Msg }">
<div class="alert alert-danger alert-dismissible col-md-9 col-md-offset-3" role="alert">
	<button type="button" class="close" data-dismiss="alert" aria-label="閉じる"><span aria-hidden="true">×</span></button>
	<strong>error:</strong>${err_Msg }
</div>

</c:if>

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






