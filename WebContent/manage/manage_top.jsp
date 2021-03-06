
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

        <!-- Custom CSS -->

        <!-- Custom Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>

        <script src="js/jquery-2.1.1.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="js/jquery.appear.js"></script>
        <script src="js/contact_me.js"></script>
        <script src="js/jqBootstrapValidation.js"></script>
        <script src="js/modernizr.custom.js"></script>
        <script src="js/script.js"></script>
        <script src="js/login.js"></script>






        <link href="../css/style.css" rel="stylesheet">
    </head>

    <body >
        <div class="pure-container" data-effect="pure-effect-scaleRotate">
            <!-- <input type="checkbox" id="pure-toggle-left" class="pure-toggle" data-toggle="left"/> -->
            <label class="pure-toggle-label" for="pure-toggle-left" data-toggle-label="left"><span class="pure-toggle-icon"></span></label>

            <nav class="pure-drawer" data-position="left">

                <!-- <p style="padding: 100px 20px; margin: 0;">Insert your off-canvas content here</p>  -->
            </nav>

            <div class="pure-pusher-container ">
                <div class="pure-pusher">
                    <section id="logo-section" class="text-center ">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="logo text-center">
                            <h1>Manage　TOP</h1>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Logo Section -->


        <!-- Start Main Body Section --><!-- メインボディ部分 -->
        <div class="mainbody-section text-center ">
            <div class="container ">
                <div class="row">

   <div class="col-md-6" style="cursor: pointer">

                        <div class="menu-item back-color2">
                            <a href="/Sotsuken/ManageUpdate?page=class_manage" data-toggle="modal">
                                <i class="fa fa-mortar-board"></i>
                                <p>クラス管理</p>
                            </a>
                        </div>
                        </div>


                         <div class="col-md-6" style="cursor: pointer">

                        <div class="menu-item back-color2">
                            <a href="/Sotsuken/ManageUpdate?page=event_manage" data-toggle="modal">
                                <i class="fa fa-exclamation-triangle"></i>
                                <p>イベント</p>
                            </a>
                        </div>
                        </div>

                        <div class="col-md-6" style="cursor: pointer">
                        <div class="menu-item back-color2">
                            <a href="/Sotsuken/ManageUpdate?page=teacher_manage" data-toggle="modal">
                                <i class="fa fa-user"></i>
                                <p>講師管理</p>
                            </a>
                        </div>
                        </div>

                        <div class="col-md-6" style="cursor: pointer">
                        <div class="menu-item back-color2">
                            <a href="/Sotsuken/ManageUpdate?page=subject_manage" data-toggle="modal">
                                <i class="fa fa-book"></i>
                                <p>科目管理</p>
                            </a>
                        </div>
                        </div>

                      <div class="col-md-6" style="cursor: pointer">

                        <div class="menu-item back-color2">
                            <a href="/Sotsuken/divideUpdate" data-toggle="modal">
                                <i class="fa fa-building-o"></i>
                                <p>コマ割り</p>
                            </a>
                        </div>
                        </div>

                        <div class="col-md-6" style="cursor: pointer">
                        <div class="menu-item back-color2">
                            <a href="/Sotsuken/editView?page=R" data-toggle="modal">
                                <i class="fa fa-calendar"></i>
                                <p>時間割作成</p>
                            </a>
                        </div>
                        </div>
                </div>
            </div>


            <label class="pure-overlay" for="pure-toggle-left" data-overlay="left"></label>
        </div>
    </body>
</html>
