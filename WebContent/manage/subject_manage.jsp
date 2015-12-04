
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>


<script>

var classItems = new Array();
var arrayflag = 0;

function test(val1,val2){
	var test1 = val1;
	var test2 = val2;
	//最初のキー値に対して初期化判別
	if(classItems[test1] === undefined){
		classItems[test1]=test2;
	}else{
		classItems[test1]+=(","+test2);
	}//if



}

function selectInsert(selVal){
	var select=$("#cource_id");
	var selArray = new Array();
	select.text = "";
	var selArray = classItems[selVal].split(",");

    for (i = 0; i < selArray.length ; i++) {

        $("<option style=\"color: black;\" value=\""+selArray[i]+"\">"+selArray[i]+"</option>").appendTo(select);

    }



}

$(function($) {
	$("#grade_id").change(function(){
	//選択されているvalue属性を取り出す
	var val = $("#grade_id").val();

	selectInsert(val);


	});
});
</script>

<c:forEach var="rs" items="${classMap}">
	<c:forEach var="array" items="${rs.value }">
	<script>
	test("${rs.key }","${array }");
	</script>
	</c:forEach>
</c:forEach>

<div class="row">
	<!-- header -->
<div class="content-header">
	<div id="logo">
		<h1>科目管理</h1>
	</div>
</div>
<!-- header -->
<div id = "test"></div>


<!-- form -->
<form action="" method="get">
<table class="col-md-6 col-md-offset-3" id="first_table">
<tr>
<td class="col-md-4">
<label for="subjectName" class="labels">科目名</label>
<input type="text" class="form-control" id="subjectName"name="subjectName">
<label for="cource" class="labels">持ち物</label>
<input type="text" class="form-control" name="cource">
</td>


<td class="col-md-4">
<label for="cource" class="labels">学年</label>

<!-- 学年表示セレクト -->
<select name="grade_name" id="grade_id" class="form-control col-md-1" onchange="">
<c:forEach var="rs" items="${classMap}">
<option style="color: black;" value="${rs.key }">${rs.key }</option>
</c:forEach>
<option style="color: black;" value="ALL">ALL</option>
</select> <!-- 1回目学年select終了 -->

<!-- 学科　選択学年から学科をjqで自動抽出予定 -->
<label for="cource"class="labels">学科</label>
<select class="form-control col-md-1" name="cource_name" id="cource_id">
<c:forEach  var="rs" items="${classMap.val}">
<option style="color: black;" value="${rs }">${rs }</option>
</c:forEach>
<option style="color: black;">ALL</option>
</select></td>

<td class="col-md-4"><label for="cource" class="labels">学年</label>
<select class="form-control col-md-1">
<c:forEach var="rs" items="${classMap}">

<option style="color: black;">${rs.key }</option>

</c:forEach>
<option style="color: black;">ALL</option>

</select>
<label for="cource" class="labels">学科</label>
<select class="form-control col-md-1">
<option style="color: black;">R1</option>
<option style="color: black;">R1</option>
<option style="color: black;">R2</option>
<option style="color: black;">R3</option>
<option style="color: black;">R4</option>
<option style="color: black;">ALL</option>

</select></td>

<td class="col-md-4"><label for="cource" class="empty">________</label>
<button type="button" class="btn btn-primary" id="regist_btn">登録</button>
</td>
</tr>
</table>
</form>


<!-- 科目一覧表示 -->
<div class="col-md-6 col-md-offset-3">
<div class="back">
<table class="table ">
<thead>
<tr>
<td colspan="3">subject</td>
</tr>
</thead>
<tbody>
<!-- 科目情報取得 -->
<c:forEach var="rs" items="${subjectList }">
<tr class="select">
<td>${rs.subjectName}</td>
<td>${rs.bringThings}</td>
<td>
<!-- 削除用フォーム -->
<form action="/Sotsuken/ManageUpdate" method="get">
<input type="hidden" name="subjectID" value="${rs.subjectID }" />
<input type="submit" class="btn btn-danger"name="delete_subject" value="削除" />
</form> <!-- 削除 -->
</td>

</tr>
</c:forEach>

</tbody>
</table>
</div>
</div>
</div>