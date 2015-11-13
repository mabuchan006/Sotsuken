<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ja">
<head>
<meta charset="utf-8" />

<!-- js -->
<script src="../js/jquery-2.1.1.min.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../js/jquery.appear.js"></script>
<script src="login.js"></script>

<title>ログイン画面</title>
</head>
<body>

	<form action="loginServlet">
	<label>ID:</label><br>
	<input type="text" placeholder="ID" id="enterId" value=""> <br>
	<label>パスワード:</label><br>
	<input type="text" placeholder="PASS" id="enterPw" value=""><br> <br>
	<input type="button" value="ログイン" id="login" >
	</form>

</body>
</html>