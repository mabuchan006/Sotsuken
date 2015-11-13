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

<<<<<<< HEAD
   <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Font Awesome CSS -->
        <link href="../css/font-awesome.min.css" rel="stylesheet">

		<!-- Custom CSS -->
        <link href="../css/animate.css" rel="stylesheet">


<title>login</title>
=======
<title>ログイン画面</title>
>>>>>>> branch 'master' of https://github.com/mabuchan006/Sotsuken.git
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