<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:if test= "${!empty Msg }">
<script>
toastSelect("success","${Msg }")</script>
</c:if>

<c:if test=  "${!empty err_Msg }">
<script>toastSelect("error","${err_Msg }")</script>
</c:if>



<div class="row col-md-9"id="top">
<div class="col-md-1 col-md-offset-9 fix margin-top">

		<a href="#top"><i class="fa fa-arrow-circle-up fa-4x i-color fix up-icon"></i></a>

		</div>

<!-- 登録処理 -->
<form action="/Sotsuken/ManageUpdate" method="post">
<input type="hidden" name="page" value="subject_manage" />

<table class="col-md-9 col-md-offset-3" id="first_table">
<tr>
<td class="col-md-3">
<!-- ID入力 -->
<label for="teacher_id" class="labels">ID</label>
<input type="number" size="20" class="form-control" id="teacherID" name="teacher_id" value="" autocomplete="off " >
</td>

<td class="col-md-3">
<!-- 名前入力 -->
<label for="teacherName" class="labels">名前</label>
<input type="text" size="20" class="form-control" id="teacherName" name="teacherName" >
</td>

<td class="col-md-3">
<!-- pass入力 -->
<label for="password" class="labels">パスワード</label>
<input type="password" size="20" class="form-control" name="password" >
</td>

<td class="col-md-3">
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
<td class="widet"></td>
<td class="center">名前</td>
<td class="center">ID</td>
<td class="right">${cnt }　件</td></tr>
</thead>


<tbody>
<!-- 講師情報取得 -->
<c:forEach var="teacher" items="${teacherList}">
<tr class="select">
<td>
<c:if test="${!empty teacher.password }">

<!--  pass変更ボタン -->
<button type="button" class="btn btn-info wideb"name="edit_pass" id="#team-modal" data-toggle="modal"
						data-target="#myModal" style="cursor: pointer">
								 <i class="fa fa-users fa-2x"></i>
</button>

</c:if>
<c:if test="${empty teacher.password }">

<button type="button" class="btn btn-active wideb"name="edit_pass" id="#team-modal" data-toggle="modal"
						data-target="#myModal2" style="cursor: pointer">
								 <i class="fa fa-users fa-2x"></i>
</button>
</c:if>


</td>

<td   class = "teachername" data-name="${teacher.teacherID }">

${ teacher.teacherName }

</td>
<td   class = "teacherid" data-name="${teacher.teacherID }">
${ teacher.teacherID }


</td>
<td>
<div style="display:inline-flex">
<button type="button" class="btn btn-success edit_teacher "name="edit_teacher" ><i class="fa fa-pencil-square-o fa-2x"></i></button>


<!-- モーダルウィンドウ管理者 -->
				<div class="modal fade" id="myModal">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header back-color">
								<button type="button" class="close right" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h3 class="modal-title white fonts">パスワード変更</h3>
							</div>
							<div class="modal-body black">
							<form id="manageForm" class="form-horizontal">
							<div class="left1">

									<table>
									<tr>

									<td><div class="form-group">
							        <label class="black md left">Old Pass:</label></div>
									</td>
									<td><div class="form-group">
									<input type="password" class="form-control col-md-6" name="old_password" id="old_pwd" placeholder="新しいパスワード"/>
									</div></td></tr>
									<tr>

									<td><div class="form-group">
							        <label class="black md left">New Pass:</label> </div></td>
									<td><div class="form-group">
									<input type="password" class="form-control col-md-6" name="password" id="new_pwd" placeholder="新しいパスワード"/>
									</div></td></tr>
									<tr><td><div class="form-group">
							        <label class="black md left">Re Type:</label></div></td>
							        <td><div class="form-group">
							        <input type="password" class="form-control col-md-6" name="confirmPassword" id="reType" placeholder="再入力"/>
							   		</div></td>
							    </tr>
								</table>
								</div>
							<br><button type="submit"  id="edit_pass" name="edit_pass"
							class="btn-default wi btn-lg select5"><div class="bo">変更</div></button></form>


							</div>
						<div class="modal-footer ">
						<div class="mar">
					<button type="button" class="btn btn-primary wi"
				data-dismiss="modal">閉じる</button>
				</div>
			</div>
		</div>
	</div>
</div>



<!-- モーダルウィンドウ一般講師 -->

<div class="modal fade" id="myModal2">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header back-color">
								<button type="button" class="close right" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h3 class="modal-title white fonts">管理者権限</h3>
							</div>
							<div class="modal-body black">
							<form id="newForm" class="form-horizontal">
							<div class="left1">
									<table>
									<tr>

									<tr>
									<td>
							        <label class="black md left">New Pass:</label> </td>
									<td><div class="form-group">
									<input type="password" class="form-control col-md-6" name="password"  placeholder="新しいパスワード"/>
							    </div>
										</td></tr>
										<tr><td>

							        <label class="black md left">Re Type:</label></td>
							        <td>	<div class="form-group">
							        <input type="password" class="form-control col-md-6" name="confirmPassword" placeholder="再入力"/>

							    </div>
							    </td></tr>
										</table>
										</div>
							<br><button type="submit"  id="regist_pass" name="regist_pass"
							class="btn-default wi btn-lg select5"><div class="bo">登録</div></button>
							</form>

							</div>
						<div class="modal-footer ">
						<div class="mar">
					<button type="button" class="btn btn-primary wi"
				data-dismiss="modal">閉じる</button>
				</div>
			</div>
		</div>
	</div>
</div>


<!-- モーダルウィンドウ一般講師　バックアップ -->
				<div class="modal fade" id="myModal2">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header back-color">
								<button type="button" class="close right" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h3 class="modal-title white fonts">管理者権限</h3>
							</div>
							<div class="modal-body black">
								<form id="newForm" class="form-horizontal">

							    <div class="form-group">
							        <label class="black md left">New Pass:</label>

							            <input type="password" class="form-control col-md-6" name="password" placeholder="新しいパスワード"/>

							    </div>

							    <div class="form-group">
							        <label class="black md left">Re Type:</label>

							            <input type="password" class="form-control col-md-6" name="confirmPassword" placeholder="再入力"/>

							    </div>

							<br><input type="submit" value="登録" id="regist_pass" name="regist_pass">
							</form>
							</div>
						<div class="modal-footer">
					<button type="button" class="btn btn-primary"
				data-dismiss="modal">閉じる</button>
			</div>
		</div>
	</div>
</div>
<!-- 削除用フォーム -->
<form action="/Sotsuken/ManageUpdate" method="post">
<input type="hidden" name="page" value="teacher_manage" />
<input type="hidden" name = "teacher_id" value="${ teacher.teacherID }" />
<input type="hidden" name = "teacherName" value="${ teacher.teacherName }" />
<button type="submit" class="btn btn-danger delete"name="delete_teacher" ><i class="fa fa-trash-o fa-2x"></i></button>
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








