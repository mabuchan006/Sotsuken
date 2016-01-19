
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<!DOCTYPE html>

<!-- 学年学科選択処理 -->
<script>

var classItems = new Array();
var arrayflag = 0;

function firstSelect(val1,val2){
	var test1 = val1;
	var test2 = val2;
	//最初のキー値に対して初期化判別
	if(classItems[test1] === undefined){
		classItems[test1]=test2;
	}else{
		classItems[test1]+=(","+test2);
	}//if

}//firstSelect

function selectInsert(selVal,num){
	var select=$("#cource_id"+num);
	var selArray = new Array();
	select.text("");
	var selArray = classItems[selVal].split(",");

    for (i = 0; i < selArray.length ; i++) {

        $("<option style=\"color: black;\" value=\""+selArray[i]+"\">"+selArray[i]+"</option>").appendTo(select);

    }//for
    $("<option style=\"color: black;\" value=\"ALL\">ALL</option>").appendTo(select);
}//function selectInsert(selVal

function selectChange(num){
	//選択されているvalue属性を取り出す
	var val = $("#grade_id"+num).val();
	if(val != "ALL"){
		selectInsert(val,num);
	}else{
		var select=$("#cource_id"+num);
		 select.html("<option style=\"color: black;\" value=\"ALL\">ALL</option>");
	}


	}//selectChange
</script>

<!-- foreach2重だよ selectに学年情報を格納-->
<c:forEach var="rs" items="${classMap}">
	<c:forEach var="array" items="${rs.value }">
	<script>
	firstSelect("${rs.key }","${array }");
	</script>
	</c:forEach>
</c:forEach>

<c:if test= "${!empty Msg }">
<script>
toastSelect("success","${Msg }")</script>
</c:if>

<c:if test=  "${!empty err_Msg }">
<script>toastSelect("error","${err_Msg }")</script>
</c:if>

<div class="row col-md-9">

<!-- form -->
<form action="/Sotsuken/ManageUpdate" method="post"  id="submit">
<input type="hidden" name="page" value="subject_manage" />
<table class="table col-md-9 col-md-offset-3 nana">
<thead class="thead bgc">
<tr class="white">
<th >科目名</th>
<th >学年</th>
<th >学科</th>
<th >持ち物</th>

<th class="color11"><input type="submit" class="btn btn-primary btn-lg" id="regist_btn" name="regist_subject" value="登録" /></th>
</tr>
</thead>
<tbody id="addTb-tbody">
<tr class="" id="">
<!-- 科目名 -->
<td>
<input type="text" class="form-control subjectName " id="subjectName"name="subjectName1"/>
</td>


<!-- 学年表示セレクト -->
<td>
<select name="grade_name1 "  class="form-control col-md-1 grade" id="grade_id1" onchange="selectChange(1)" >
<option style="color: black;" value="" >--select--</option>
<c:forEach var="rs" items="${classMap}">
<option style="color: black;" value="${rs.key }">${rs.key }</option>
</c:forEach>
<option style="color: black;" value="ALL">ALL</option>
</select> <!-- 学年select終了 -->
</td>

<td>
<!-- 学科　選択学年から学科をjqで自動抽出予定 -->
<select class="form-control col-md-1 cource" id="cource_id1" name="cource_name1" >
<option style="color: black;" value="">--select--</option>
</select>
</td>

<!-- 持ち物 -->
<td>
<input type="text" class="form-control bringThings" name="bringThings1" />
</td>


  <td>
    <input value="+" type="button" class="addList btn-primary">　
    <input value="-" type="button" class="removeList btn-danger" />
  </td>

</tr>
</tbody>
</table>

</form>


<!-- 科目一覧表示 -->
<div class="col-md-9 col-md-offset-3">
<div class="back">
<table class="table ">
<thead class="thead">
<tr class="info wide">
<td colspan="3">科目一覧   ( ${cnt } 件)</td></tr>

</thead>
<tbody>
<!-- 科目情報取得 -->
<c:forEach var="rs" items="${subjectList }">
<tr class="select">
<td class="subjectname" data-name="${rs.classID}">${rs.classID}</td>
<td class="subjectname" data-name="${rs.subjectID}">${rs.subjectName}</td>
<td class="bringthings" data-name="${rs.subjectID}">${rs.bringThings}</td>
<td>
<div style="display:inline-flex">
<button type="button" class="btn btn-success edit_subject "name="edit_subject" ><i class="fa fa-pencil-square-o fa-2x"></i></button>

<!-- 削除用フォーム -->
<form action="/Sotsuken/ManageUpdate" method="post">
<input type="hidden" name="page" value="subject_manage" />
<input type="hidden" name="subjectID" value="${rs.subjectID }" />
<input type="hidden" name="subjectName" value="${rs.subjectName }" />
<button type="submit" class="btn btn-danger"name="delete_subject" ><i class="fa fa-trash-o fa-2x"></i></button>
</form> <!-- 削除 -->
</div>
</td>

</tr>
</c:forEach>

</tbody>
</table>
</div>
</div>
</div>