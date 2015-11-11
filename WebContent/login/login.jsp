<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>ログイン認証画面</title>

<link href="../css/custom.css" rel="stylesheet">

<!-- BootstrapのCSS読み込み -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="js/jquery-2.1.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="js/jquery.appear.js"></script>
<script src="js/login.js"></script>
</head>

<body>

	<form>
		<input id="enterId" type="text" value="ID"> <br>
		<input id="enterPw" type="text" value="パスワード"> <br><br>
		<input id="login" type="button" value="ログイン" />

		<!-- この機能は削除かも -->
		<div id="link">
			<a href="">ご登録がまだお済でない方はこちらから</a>
		</div>

	</form>

</body>
</html>