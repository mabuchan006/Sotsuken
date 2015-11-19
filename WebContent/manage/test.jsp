<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
<script src="../js/belongings.js"></script>

<!-- PopBox -->
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/popbox.js" type="text/javascript"></script>

<!-- CSS -->
<link href="css/popbox.css" type="text/css" rel="stylesheet">

<title>テスト</title>
</head>
<body>
<div class='popbox'>
    <a class='open' href='#'>Click Here!</a>
    <div class='collapse'>                       <!-- ポップアップ全体 -->
        <div class='box'>                        <!-- ポップアップ -->
            <div class='arrow'></div>            <!-- ポップアップの矢印 -->
            <div class='arrow-border'></div>     <!-- ポップアップの外線 -->
            Content in PopBox goes here          <!-- ポップアップ内のコンテンツ -->
            <a href="#" class="close">close</a>  <!-- closeリンク -->
        </div>
    </div>
</div>
</body>
</html>