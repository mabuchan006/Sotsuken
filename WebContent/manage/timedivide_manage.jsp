
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
<head>
       <meta charset="utf-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1">

<title>コマ割り管理</title>

<link href="../css/custom.css" rel="stylesheet">
<link href="../css/timedivide_manage.css" rel="stylesheet">

<!-- BootstrapのCSS読み込み -->

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="../js/jquery-2.1.1.min.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../js/jquery.appear.js"></script>
<script src="../js/teacher_regist.js"></script>



</head>

<body>
<table>
	<tr>
		<td>日付</td>
	</tr>
</table>
<p>NCS</p>
<table border="1" id="ncs"><!-- NCS -->
	<tr>
    	<td rowspan="4">8F</td>
        <td colspan="2" rowspan="4">倉庫</td>
        <td rowspan="4">802</td>
        <td rowspan="4">
        	<input type="text" name="NCS802-1" size="10" maxlength="10">
            <input type="text" name="NCS802-2" size="10" maxlength="10">
            <input type="text" name="NCS802-3" size="10" maxlength="10">
			<input type="text" name="NCS802-4" size="10" maxlength="10">
        </td>
        <td colspan="2" rowspan="4">進路指導室</td>
        <td rowspan="4">803</td>
        <td rowspan="4">
        	<input type="text" name="NCS803-1" size="10" maxlength="10">
            <input type="text" name="NCS803-2" size="10" maxlength="10">
        	<input type="text" name="NCS803-3" size="10" maxlength="10">
            <input type="text" name="NCS803-4" size="10" maxlength="10">
        </td>
    </tr>
    <tr>
    	<td rowspan="4">7F</td>
        <td colspan="2" rowspan="4">701</td>
        <td colspan="2" rowspan="4">
        	<input type="text" name="NCS701-1" size="10" maxlength="10">
            <input type="text" name="NCS701-2" size="10" maxlength="10">
            <input type="text" name="NCS701-3" size="10" maxlength="10">
            <input type="text" name="NCS701-4" size="10" maxlength="10">
        </td>
        <td colspan="2" rowspan="4">702</td>
        <td colspan="2" rowspan="4">
        	<input type="text" name="NCS702-1" size="10" maxlength="10">
            <input type="text" name="NCS702-2" size="10" maxlength="10">
            <input type="text" name="NCS702-3" size="10" maxlength="10">
            <input type="text" name="NCS702-4" size="10" maxlength="10">
        </td>
    </tr>
    <tr>
    	<td rowspan="4">6F</td>
        <td colspan="2" rowspan="4">601</td>
        <td colspan="2" rowspan="4">
        	<input type="text" name="NCS601-1" size="10" maxlength="10">
            <input type="text" name="NCS601-2" size="10" maxlength="10">
            <input type="text" name="NCS601-3" size="10" maxlength="10">
            <input type="text" name="NCS601-4" size="10" maxlength="10">
        </td>
        <td rowspan="4">603</td>
        <td rowspan="4">
        	<input type="text" name="NCS603-1" size="10" maxlength="10">
            <input type="text" name="NCS603-2" size="10" maxlength="10">
            <input type="text" name="NCS603-3" size="10" maxlength="10">
            <input type="text" name="NCS603-4" size="10" maxlength="10">
        </td>
        <td rowspan="4">604</td>
        <td rowspan="4">
        	<input type="text" name="NCS604-1" size="10" maxlength="10">
            <input type="text" name="NCS604-2" size="10" maxlength="10">
            <input type="text" name="NCS604-3" size="10" maxlength="10">
            <input type="text" name="NCS604-4" size="10" maxlength="10">
        </td>
    </tr>
    <tr>
    	<td rowspan="4">5F</td>
        <td rowspan="4">501</td>
        <td rowspan="4">
        	<input type="text" name="NCS501-1" size="10" maxlength="10">
            <input type="text" name="NCS501-2" size="10" maxlength="10">
            <input type="text" name="NCS501-3" size="10" maxlength="10">
            <input type="text" name="NCS501-4" size="10" maxlength="10">
        </td>
        <td rowspan="4">502</td>
        <td rowspan="4">
        	<input type="text" name="NCS502-1" size="10" maxlength="10">
            <input type="text" name="NCS502-2" size="10" maxlength="10">
            <input type="text" name="NCS502-3" size="10" maxlength="10">
            <input type="text" name="NCS502-4" size="10" maxlength="10">
        </td>
        <td rowspan="4">503</td>
        <td rowspan="4">
        	<input type="text" name="NCS503-1" size="10" maxlength="10">
            <input type="text" name="NCS503-2" size="10" maxlength="10">
            <input type="text" name="NCS503-3" size="10" maxlength="10">
            <input type="text" name="NCS503-4" size="10" maxlength="10">
        </td>
        <td rowspan="4">504</td>
        <td rowspan="4">
        	<input type="text" name="NCS504-1" size="10" maxlength="10">
            <input type="text" name="NCS504-2" size="10" maxlength="10">
            <input type="text" name="NCS504-3" size="10" maxlength="10">
            <input type="text" name="NCS504-4" size="10" maxlength="10">
        </td>
    </tr>
    <tr>
    	<td rowspan="4">4F</td>
        <td rowspan="4">401</td>
        <td rowspan="4">
        	<input type="text" name="NCS401-1" size="10" maxlength="10">
            <input type="text" name="NCS401-2" size="10" maxlength="10">
            <input type="text" name="NCS401-3" size="10" maxlength="10">
            <input type="text" name="NCS401-4" size="10" maxlength="10">
        </td>
    	<td rowspan="4">402</td>
        <td rowspan="4">
        	<input type="text" name="NCS402-1" size="10" maxlength="10">
            <input type="text" name="NCS402-2" size="10" maxlength="10">
            <input type="text" name="NCS402-3" size="10" maxlength="10">
            <input type="text" name="NCS402-4" size="10" maxlength="10">
        </td>
        <td rowspan="4">403</td>
        <td rowspan="4">
        	<input type="text" name="NCS403-1" size="10" maxlength="10">
            <input type="text" name="NCS403-2" size="10" maxlength="10">
            <input type="text" name="NCS403-3" size="10" maxlength="10">
            <input type="text" name="NCS403-4" size="10" maxlength="10">
        </td>
        <td rowspan="4">404</td>
        <td rowspan="4">
        	<input type="text" name="NCS404-1" size="10" maxlength="10">
            <input type="text" name="NCS404-2" size="10" maxlength="10">
            <input type="text" name="NCS404-3" size="10" maxlength="10">
            <input type="text" name="NCS404-4" size="10" maxlength="10">
        </td>
    </tr>
    <tr>
    	<td rowspan="4">3F</td>
        <td rowspan="4">301</td>
        <td rowspan="4">
        	<input type="text" name="NCS301-1" size="10" maxlength="10">
            <input type="text" name="NCS301-2" size="10" maxlength="10">
            <input type="text" name="NCS301-3" size="10" maxlength="10">
            <input type="text" name="NCS301-4" size="10" maxlength="10">
        </td>
        <td rowspan="4">302</td>
        <td rowspan="4">
        	<input type="text" name="NCS302-1" size="10" maxlength="10">
            <input type="text" name="NCS302-2" size="10" maxlength="10">
            <input type="text" name="NCS302-3" size="10" maxlength="10">
            <input type="text" name="NCS302-4" size="10" maxlength="10">
        </td>
        <td rowspan="4">303</td>
        <td rowspan="4">
        	<input type="text" name="NCS303-1" size="10" maxlength="10">
            <input type="text" name="NCS303-2" size="10" maxlength="10">
            <input type="text" name="NCS303-3" size="10" maxlength="10">
            <input type="text" name="NCS303-4" size="10" maxlength="10">
        </td>
        <td rowspan="4">304</td>
        <td rowspan="4">
        	<input type="text" name="NCS304-1" size="10" maxlength="10">
            <input type="text" name="NCS304-2" size="10" maxlength="10">
            <input type="text" name="NCS304-3" size="10" maxlength="10">
            <input type="text" name="NCS304-4" size="10" maxlength="10">
        </td>
    </tr>
    <tr>
    	<td rowspan="4">2F</td>
        <td colspan="3" rowspan="4">201</td>
        <td colspan="3" rowspan="4">
        	<input type="text" name="NCS201-1" size="10" maxlength="10">
            <input type="text" name="NCS201-2" size="10" maxlength="10">
            <input type="text" name="NCS201-3" size="10" maxlength="10">
            <input type="text" name="NCS201-4" size="10" maxlength="10">
        </td>
        <td colspan="2" rowspan="4">図書室</td>
    </tr>
    <tr>
    	<td>1F</td>
        <td colspan="4">サロン</td>
        <td colspan="4">事務受付・職員室</td>
    </tr>
</table>

<p>NMIC</p>
<table border="1" id="nmic">
	<tr>
    	<td rowspan="4">5F</td>
        <td colspan="2" rowspan="4">501</td>
        <td colspan="2" rowspan="4">
        	<input type="text" name="NMIC501-1" size="10" maxlength="10">
            <input type="text" name="NMIC501-2" size="10" maxlength="10">
            <input type="text" name="NMIC501-3" size="10" maxlength="10">
            <input type="text" name="NMIC501-4" size="10" maxlength="10">
        </td>
        <td rowspan="4">502</td>
        <td rowspan="4">
        	<input type="text" name="NMIC502-1" size="10" maxlength="10">
            <input type="text" name="NMIC502-2" size="10" maxlength="10">
            <input type="text" name="NMIC502-3" size="10" maxlength="10">
            <input type="text" name="NMIC502-4" size="10" maxlength="10">
        </td>
        <td rowspan="4">503</td>
        <td rowspan="4">
        	<input type="text" name="NMIC503-1" size="10" maxlength="10">
            <input type="text" name="NMIC503-2" size="10" maxlength="10">
            <input type="text" name="NMIC503-3" size="10" maxlength="10">
            <input type="text" name="NMIC503-4" size="10" maxlength="10">
        </td>
    </tr>
    <tr>
    	<td rowspan="4">4F</td>
        <td rowspan="4">401</td>
        <td rowspan="4">
        	<input type="text" name="NMIC401-1" size="10" maxlength="10">
            <input type="text" name="NMIC401-2" size="10" maxlength="10">
            <input type="text" name="NMIC401-3" size="10" maxlength="10">
            <input type="text" name="NMIC401-4" size="10" maxlength="10">
        </td>
        <td rowspan="4">402</td>
        <td rowspan="4">
        	<input type="text" name="NMIC402-1" size="10" maxlength="10">
            <input type="text" name="NMIC402-2" size="10" maxlength="10">
            <input type="text" name="NMIC402-3" size="10" maxlength="10">
            <input type="text" name="NMIC402-4" size="10" maxlength="10">
        </td>
        <td rowspan="4">403</td>
        <td rowspan="4">
        	<input type="text" name="NMIC403-1" size="10" maxlength="10">
            <input type="text" name="NMIC403-2" size="10" maxlength="10">
            <input type="text" name="NMIC403-3" size="10" maxlength="10">
            <input type="text" name="NMIC403-4" size="10" maxlength="10">
        </td>
        <td rowspan="4">404</td>
        <td rowspan="4">
        	<input type="text" name="NMIC404-1" size="10" maxlength="10">
            <input type="text" name="NMIC404-2" size="10" maxlength="10">
            <input type="text" name="NMIC404-3" size="10" maxlength="10">
            <input type="text" name="NMIC404-4" size="10" maxlength="10">
        </td>
    </tr>
    <tr>
    	<td rowspan="4">3F</td>
        <td rowspan="4">301</td>
        <td rowspan="4">
        	<input type="text" name="NMIC301-1" size="10" maxlength="10">
            <input type="text" name="NMIC301-2" size="10" maxlength="10">
            <input type="text" name="NMIC301-3" size="10" maxlength="10">
            <input type="text" name="NMIC301-4" size="10" maxlength="10">
        </td>
        <td rowspan="4">302</td>
        <td rowspan="4">
        	<input type="text" name="NMIC302-1" size="10" maxlength="10">
            <input type="text" name="NMIC302-2" size="10" maxlength="10">
            <input type="text" name="NMIC302-3" size="10" maxlength="10">
            <input type="text" name="NMIC302-4" size="10" maxlength="10">
        </td>
        <td rowspan="4">303</td>
        <td rowspan="4">
        	<input type="text" name="NMIC303-1" size="10" maxlength="10">
            <input type="text" name="NMIC303-2" size="10" maxlength="10">
            <input type="text" name="NMIC303-3" size="10" maxlength="10">
            <input type="text" name="NMIC303-4" size="10" maxlength="10">
        </td>
        <td rowspan="4">304</td>
        <td rowspan="4">
        	<input type="text" name="NMIC304-1" size="10" maxlength="10">
            <input type="text" name="NMIC304-2" size="10" maxlength="10">
            <input type="text" name="NMIC304-3" size="10" maxlength="10">
            <input type="text" name="NMIC304-4" size="10" maxlength="10">
        </td>
    </tr>
    <tr>
    	<td rowspan="4">2F</td>
        <td rowspan="4">201</td>
        <td rowspan="4">
       		<input type="text" name="NMIC201-1" size="10" maxlength="10">
            <input type="text" name="NMIC201-2" size="10" maxlength="10">
            <input type="text" name="NMIC201-3" size="10" maxlength="10">
            <input type="text" name="NMIC201-4" size="10" maxlength="10">
        </td>
        <td rowspan="4">202</td>
        <td rowspan="4">
       		<input type="text" name="NMIC202-1" size="10" maxlength="10">
            <input type="text" name="NMIC202-2" size="10" maxlength="10">
            <input type="text" name="NMIC202-3" size="10" maxlength="10">
            <input type="text" name="NMIC202-4" size="10" maxlength="10">
        </td>
        <td rowspan="4">203</td>
        <td rowspan="4">
       		<input type="text" name="NMIC203-1" size="10" maxlength="10">
            <input type="text" name="NMIC203-2" size="10" maxlength="10">
            <input type="text" name="NMIC203-3" size="10" maxlength="10">
            <input type="text" name="NMIC203-4" size="10" maxlength="10">
        </td>
        <td rowspan="4">204</td>
        <td rowspan="4">
       		<input type="text" name="NMIC204-1" size="10" maxlength="10">
            <input type="text" name="NMIC204-2" size="10" maxlength="10">
            <input type="text" name="NMIC204-3" size="10" maxlength="10">
            <input type="text" name="NMIC204-4" size="10" maxlength="10">
        </td>
    </tr>
    <tr>
    	<td rowspan="4">1F</td>
        <td rowspan="4">101</td>
        <td rowspan="4">
        	<input type="text" name="NMIC101-1" size="10" maxlength="10">
            <input type="text" name="NMIC101-2" size="10" maxlength="10">
            <input type="text" name="NMIC101-3" size="10" maxlength="10">
            <input type="text" name="NMIC101-4" size="10" maxlength="10">
        </td>
        <td rowspan="4">医療シュミレーションルーム</td>
        <td rowspan="4">
        	<input type="text" name="MSroom-1" size="10" maxlength="10">
            <input type="text" name="MSroom-2" size="10" maxlength="10">
            <input type="text" name="MSroom-3" size="10" maxlength="10">
            <input type="text" name="MSroom-4" size="10" maxlength="10">
        <td>
        <td colspan="3" rowspan="4">事務受付・職員室</td>
    </tr>
</table>

<footer></footer>

</body>
</html>
