<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap Core CSS -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome CSS -->
<link href="css/font-awesome.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/animate.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/style.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href='http://fonts.googleapis.com/css?family=Lobster'
	rel='stylesheet' type='text/css'>

<script src="js/jquery-2.1.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="js/jquery.appear.js"></script>
<script src="js/login.js"></script>

<script src="js/cookie.js"></script>



<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

<title>Time Table</title>
</head>

<body>

<c:if test="${empty top }">

<!-- お気に入り登録されたページへ遷移する -->
<form action="/Sotsuken/publicView" method="post"  id="cookieSubmit">
<input type="hidden" name="page" value="" id="cookiePage"/>
</form>
</c:if>

	<!-- Start Logo Section -->
	<!-- ヘッダー部分 -->
	<section id="logo-section" class="text-center">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="logo text-center">
					<h1>Time Table</h1>

				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- End Logo Section -->


	<!-- Start Main Body Section -->
	<!-- メインボディ部分 -->
	<div class="mainbody-section text-center">
		<div class="container">
			<div class="row">


				<div class="col-md-3" style="cursor: pointer">

					<div class="menu-item blue">
						<a href="/Sotsuken/publicView?page=R" data-toggle="modal"> <i
							class="fa fa-mortar-board"></i>
							<p>R</p>
						</a>
					</div>
				</div>

				<div class="col-md-3" style="cursor: pointer">
					<div class="menu-item red">
						<a href="../Sotsuken/publicView?page=S" data-toggle="modal"> <i
							class="fa fa-android"></i>
							<p>S</p>
						</a>
					</div>
				</div>

				<div class="col-md-3" style="cursor: pointer">
					<div class="menu-item green">
						<a href="../Sotsuken/publicView?page=J" data-toggle="modal"> <i
							class="fa fa-paint-brush"></i>
							<p>J</p>
						</a>
					</div>
				</div>

				<div class="col-md-3" style="cursor: pointer">
					<div class="menu-item yellow">
						<a href="../Sotsuken/publicView?page=A" data-toggle="modal"> <i
							class="fa fa-book"></i>
							<p>A</p>
						</a>
					</div>
				</div>

				<div class="row">
					<div class="col-md-6" style="cursor: pointer">
						<div class="menu-item color responsive">
							<a href="../Sotsuken/eventView" data-toggle="modal">
								<i class="fa fa-file-text"></i>
								<p>event</p>
							</a>
						</div>
					</div>



					<!-- モーダルウィンドウを呼び出すボタン -->

					<div class="col-md-6" id="#team-modal" data-toggle="modal"
						data-target="#myModal" style="cursor: pointer">
						<div class="menu-item light-orange responsive-2" id="modal">
							<a href="#team-modal"> <i class="fa fa-users"></i>
								<p>login</p>
							</a>
						</div>
					</div>

				</div>


				<!-- モーダルウィンドウの中身 -->
				<div class="modal fade" id="myModal">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header back-color">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h3 class="modal-title white">ログイン</h3>
							</div>
							<div class="modal-body">
								<form action="/Sotsuken/loginControl" method="POST" id="loginForm">
									<div id="msg"></div>
									<label class="wide11">userID:</label> <input type="text"
										placeholder="ユーザーID" id="enterId" value="" name="teacherID"> <br>
									<label class="wide11">password:</label> <input type="password" placeholder="パスワード"
										id="enterPw" value="" name="password"><br> <br> <input
										type="submit" value="ログイン" id="login">
								</form>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-primary"
									data-dismiss="modal">閉じる</button>
							</div>
						</div>
					</div>
				</div>






			</div>
		</div>
	</div>




</body>
</html>