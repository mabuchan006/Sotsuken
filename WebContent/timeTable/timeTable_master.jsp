<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
<!-- Bootstrap Core CSS -->
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Font Awesome CSS -->
        <link href="../css/font-awesome.min.css" rel="stylesheet">

		<!-- Custom CSS -->
        <link href="../css/animate.css" rel="stylesheet">


        <!-- Custom Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>

        <script src="../js/jquery-2.1.1.min.js"></script>
        <script src="../bootstrap/js/bootstrap.min.js"></script>
        <script src="../js/jquery.appear.js"></script>

		<!-- Custom CSS -->
        <link href="../css/style.css" rel="stylesheet">

          <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

<title>タイムテーブルR4</title>
</head>
<body>


        <!-- Start Logo Section --><!-- ヘッダー部分 -->
        <section id="logo-section" class="text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="logo text-center">
                            <h1>R4A1</h1>
                            <p class="text-right"><i class="fa fa-star color-yellow fa-3x"></i></p>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Logo Section -->
<!-- タブ -->
<ul class="nav nav-tabs">
<!-- R4 -->
	<li role="presentation" class="dropdown">
		<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">
			R4 <span class="caret"></span>
		</a>
		<ul class="dropdown-menu" role="menu">
			<li role="presentation"><a href="#">R4A1</a></li>
			<li role="presentation"><a href="#">R4A2</a></li>
			<li role="presentation"><a href="#">R4A3</a></li>
			<li role="presentation"><a href="#">R4A4</a></li>
			<li role="presentation"><a href="#">R4A5</a></li>
		</ul>
	</li>
<!-- R3 -->
	<li role="presentation" class="dropdown">
		<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">
			R3 <span class="caret"></span>
		</a>
		<ul class="dropdown-menu" role="menu">
			<li role="presentation"><a href="#">R3A1</a></li>
			<li role="presentation"><a href="#">R3A2</a></li>
			<li role="presentation"><a href="#">R3A3</a></li>
			<li role="presentation"><a href="#">R3A4</a></li>
			<li role="presentation"><a href="#">R3A5</a></li>
		</ul>
	</li>
<!-- R2 -->
	<li role="presentation" class="dropdown">
		<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">
			R2 <span class="caret"></span>
		</a>
		<ul class="dropdown-menu" role="menu">
			<li role="presentation"><a href="#">R2A1</a></li>
			<li role="presentation"><a href="#">R2A2</a></li>
			<li role="presentation"><a href="#">R2A3</a></li>
			<li role="presentation"><a href="#">R2A4</a></li>
			<li role="presentation"><a href="#">R2A5</a></li>
		</ul>
	</li>
<!-- R1 -->
	<li role="presentation" class="dropdown">
		<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">
			R1 <span class="caret"></span>
		</a>
		<ul class="dropdown-menu" role="menu">
			<li role="presentation"><a href="#">R1A1</a></li>
			<li role="presentation"><a href="#">R1A2</a></li>
			<li role="presentation"><a href="#">R1A3</a></li>
			<li role="presentation"><a href="#">R1A4</a></li>
			<li role="presentation"><a href="#">R1A5</a></li>
		</ul>
	</li>



</ul>


  <div  class="container">
    <div class="table-responsive">
    <table class="table table-striped table-bordered text-center table-hover;">
    <thead>

      </thead>
		<tbody>
			<tr class="purple2">
				<th colspan="31">10月</th>
			</tr>


			<tr class="purple1">

				<th></th>
				<%
			for (int cnt0=0; cnt0<30; cnt0++) {%>
				<th nowrap>10日(水)</th>
			<%} %>

<%
for (int cnt1=1; cnt1<=4; cnt1++) {%>

	<% if (cnt1==1){ %>
<tr class="info">
				<th class="info" rowspan=3><%=cnt1 %></th>
	<%} %>

	<% if (cnt1==2){ %>
<tr class="danger">
				<th class="info" rowspan=3><%=cnt1 %></th>
	<%} %>

	<% if (cnt1==3){ %>
<tr class="success">
				<th class="success" rowspan=3><%=cnt1 %></th>
	<%} %>

	<% if (cnt1==4){ %>
<tr class="active">
				<th class="warning" rowspan=3><%=cnt1 %></th>
	<%} %>


	<%
	for (int cnt2=0; cnt2<3; cnt2++) {%>
			<%
		for (int cnt3=0; cnt3<30; cnt3++) {%>
			<%
			if (cnt1==1){ %>
				<td class="info" nowrap>a</td>
			<%} %>

			<%
			if (cnt1==2){ %>
				<td class="danger" nowrap>a</td>
			<%} %>

			<%
			if (cnt1==3){ %>
				<td class="success" nowrap>a</td>
			<%} %>

			<%
			if (cnt1==4){ %>
				<td class="warning" nowrap>a</td>
			<%} %>

		<%} %>
		</tr>
	<%} %>

<%} %>






			</tbody>

		</table>
  </div>





</div>










</body>
</html>