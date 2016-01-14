<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
<input type="hidden" name="page" value="subject_manage" />

<table class="col-md-9 col-md-offset-3" id="first_table">
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
<div class="col-md-9 col-md-offset-3">
<div class="back">
<table class="table ">
<thead>
<tr class="info wide">
<td colspan="3">講師一覧   ( ${cnt } 件)</td></tr>
</thead>
<tbody>
<!-- 講師情報取得 -->
<c:forEach var="teacher" items="${teacherList}">
<tr class="select">
<td class = "teachername" data-name="${teacher.teacherID }">${ teacher.teacherName }</td>
<td>
<div style="display:inline-flex">
<button type="button" class="btn btn-success edit_teacher "name="edit_teacher" ><i class="fa fa-pencil-square-o fa-2x"></i></button>


<!--  pass変更ボタン -->
<button type="button" class="btn btn-info "name="edit_pass" id="#team-modal" data-toggle="modal"
						data-target="#myModal" style="cursor: pointer">
								 <i class="fa fa-users fa-2x"></i>
</button>

<!-- モーダルウィンドウの中身 -->
				<div class="modal fade" id="myModal">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header back-color">
								<button type="button" class="close right" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h3 class="modal-title white">pass変更</h3>
							</div>
							<div class="modal-body black warituke ">
								<form action="/Sotsuken/loginControl" method="POST">

									<div id="msg"></div>

									<label class="black md">old pass:</label>
									<input type="text"placeholder="username" id="old_pass" value="" name="old_pass"> <br>
									<label class="black md">new pass:</label>
									<input type="password" placeholder="PASS" id="enterPw" value="" name="password">
										<br><input type="submit" value="login" id="new_pass">
								</form>
							</div>
						<div class="modal-footer">
					<button type="button" class="btn btn-primary"
				data-dismiss="modal">close</button>
			</div>
		</div>
	</div>
</div>
<!-- 削除用フォーム -->
<form action="/Sotsuken/ManageUpdate" method="post">
<input type="hidden" name="page" value="teacher_manage" />
<input type="hidden" name = "teacher_id" value="${ teacher.teacherID }" />
<input type="hidden" name = "teacherName" value="${ teacher.teacherName }" />
<button type="submit" class="btn btn-danger"name="delete_teacher" ><i class="fa fa-trash-o fa-2x"></i></button>
</form>
<!-- 削除 -->

</div>

</td>

</tr>
</c:forEach>

</tbody>
</table>
</div>
</div>
</div>








