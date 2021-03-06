<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >

<form action="/Sotsuken/divideUpdate" method="post">

	<div class="container-fluid" id="top">

		<!-- タブ -->
		<ul class="nav nav-pills nav-justified botom" id="weekTab">
			<li class="h4 active  bold" id="mon"><input type="hidden" name="mon"><a draggable="false">月</a></li>
			<li class="h4 bold" id="tue"><input type="hidden"><a draggable="false">火</a></li>
			<li class="h4 bold" id="wed"><input type="hidden"><a draggable="false">水</a></li>
			<li class="h4 bold" id="thu"><input type="hidden"><a draggable="false">木</a></li>
			<li class="h4 bold" id="fri"><input type="hidden"><a draggable="false">金</a></li>
		</ul>

		<!-- button -->
		<input type="hidden" id="checkFlag" value="false">
		<button type="button" class="btn btn-danger btn-lg col-md-1 fix col-md-offset-9 wide9" id="cBtn">クリア</button>
		<button type="submit" class="btn btn-primary btn-lg col-md-1 col-md-offset-10 fix wide9" id="sBtn" disabled>登録</button>
		<!-- button end -->

		<div class="form-group col-md-1 col-md-offset-1"></div>
		<div class="col-md-10"></div>

	</div><!-- class="container-fluid" -->

	<!-- ドラッグ&ドロップ -->

		<div class="col-md-1  fix col-md-offset-9 margin-top " id="classDrag">
			<h1>class</h1>
			<div id="drag-target">
				<div class="accordionJS white">
					<c:forEach var="rs" items="${classIDMap}">
						<h2 class="font">
							<a draggable="false">${rs.key}</a>
						</h2>
						<ul class=" ">
						<c:forEach var="array" items="${rs.value }">
							<li class="select0 size2">${array}</li>
						</c:forEach>
						</ul>
					</c:forEach>
				</div><!-- class="accordionJS" -->
			</div><!-- id="drag-target" -->
		</div><!-- class="col-md-1 fix margin-top" -->


		<div class="col-md-1 col-md-offset-10 fix margin-top ">
			<h1>room</h1>
			<div>
				<h2 class="font white">
					NCS
				</h2>
					<ul >
						<li class="select0 size2">
							<a href="#8F" draggable="false">8F </a>
						</li>
						<li class="select0 size2">
							<a href="#7F" draggable="false">7F </a>
						</li>
						<li class="select0 size2">
							<a href="#6F" draggable="false">6F </a>
						</li>
						<li class="select0 size2">
							<a href="#5F" draggable="false">5F </a>
						</li>
						<li class="select0 size2">
							<a href="#4F" draggable="false">4F </a>
						</li>
						<li class="select0 size2">
							<a href="#3F" draggable="false">3F </a>
						</li>
						<li class="select0 size2">
							<a href="#2F" draggable="false">2F </a>
						</li>
					</ul>
				<h2 class=" white">
					NMIC
				</h2>

					<ul class="">
						<li class="select0 size2">
							<a href="#M5F" draggable="false">5F</a>
						</li>
						<li class="select0 size2">
							<a href="#M4F" draggable="false">4F</a>
						</li>
						<li class="select0 size2">
							<a href="#M3F" draggable="false">3F</a>
						</li>
						<li class="select0 size2">
							<a href="#M2F" draggable="false">2F</a>
						</li>
						<li class="select0 size2">
							<a href="#M1F" draggable="false">1F</a>
						</li>
					</ul>
			</div><!-- class="accordionJS" -->

		</div><!-- class="col-md-1 fix margin-top" -->

		<div class="col-md-1 col-md-offset-11 fix margin-top">
			<a href="#top"><i class="fa fa-arrow-circle-up fa-4x i-color fix up-icon1"></i></a>
		</div>

		<div class="container">
			<div class="table  col-md-6 margin">
				<h1 class="text-center">NCS</h1>
				<table class="table table-striped table-bordered text-center teble-headerfixed;">

					<thead>
						<tr class="back-color4 white wide2 ">
							<th class="view-size font2 wide1 back-color4 white text-center">class</th>
							<th class="view-size font2 wide1 back-color4 white text-center">1</th>
							<th class="view-size font2 wide1 back-color4 white text-center">2</th>
							<th class="view-size font2 wide1 back-color4 white text-center">3</th>
							<th class="view-size font2 wide1 back-color4 white text-center">4</th>
						</tr>
					</thead>

					<tbody>
						<tr class="danger1">
							<td class="view-size font2"id="8F">803</td>
							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
									 id="NCS803-1" name="020-1" class="txtFontSize">${divideMap.NCS803[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS803-2" name="020-2" class="txtFontSize">${divideMap.NCS803[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS803-3" name="020-3" class="txtFontSize">${divideMap.NCS803[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS803-4" name="020-4" class="txtFontSize">${divideMap.NCS803[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="pink1">
							<td class="view-size font2" >802</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS802-1" name="019-1" class="txtFontSize">${divideMap.NCS802[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS802-2" name="019-2" class="txtFontSize">${divideMap.NCS802[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS802-3" name="019-3" class="txtFontSize">${divideMap.NCS802[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS802-4" name="019-4" class="txtFontSize">${divideMap.NCS802[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="danger1">
							<td class="view-size font2"id="7F">702</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS702-1" name="018-1" class="txtFontSize">${divideMap.NCS702[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS702-2" name="018-2" class="txtFontSize">${divideMap.NCS702[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS702-3" name="018-3" class="txtFontSize">${divideMap.NCS702[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS702-4" name="018-4" class="txtFontSize">${divideMap.NCS702[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="pink1">
							<td class="view-size font2" >701</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS701-1" name="017-1" class="txtFontSize">${divideMap.NCS701[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS701-2" name="017-2" class="txtFontSize">${divideMap.NCS701[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS701-3" name="017-3" class="txtFontSize">${divideMap.NCS701[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS701-4" name="017-4" class="txtFontSize">${divideMap.NCS701[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="danger1">
							<td class="view-size font2"id="6F">604</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS604-1" name="016-1" class="txtFontSize">${divideMap.NCS604[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS604-2" name="016-2" class="txtFontSize">${divideMap.NCS604[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS604-3" name="016-3" class="txtFontSize">${divideMap.NCS604[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS604-4" name="016-4" class="txtFontSize">${divideMap.NCS604[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="pink1">
							<td class="view-size font2">603</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS603-1" name="015-1" class="txtFontSize">${divideMap.NCS603[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS603-2" name="015-2" class="txtFontSize">${divideMap.NCS603[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS603-3" name="015-3" class="txtFontSize">${divideMap.NCS603[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS603-4" name="015-4" class="txtFontSize">${divideMap.NCS603[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="danger1">
							<td class="view-size font2" >601</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS601-1" name="014-1" class="txtFontSize">${divideMap.NCS601[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS601-2" name="014-2" class="txtFontSize">${divideMap.NCS601[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS601-3" name="014-3" class="txtFontSize">${divideMap.NCS601[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS601-4" name="014-4" class="txtFontSize">${divideMap.NCS601[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="pink1">
							<td class="view-size font2"id="5F">504</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS504-1" name="013-1" class="txtFontSize">${divideMap.NCS504[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS504-2" name="013-2" class="txtFontSize">${divideMap.NCS504[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS504-3" name="013-3" class="txtFontSize">${divideMap.NCS504[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS504-4" name="013-4" class="txtFontSize">${divideMap.NCS504[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="danger1">
							<td class="view-size font2">503</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS503-1" name="012-1" class="txtFontSize">${divideMap.NCS503[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS503-2" name="012-2" class="txtFontSize">${divideMap.NCS503[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS503-3" name="012-3" class="txtFontSize">${divideMap.NCS503[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS503-4" name="012-4" class="txtFontSize">${divideMap.NCS503[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="pink1">
							<td class="view-size font2">502</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS502-1" name="011-1" class="txtFontSize">${divideMap.NCS502[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS502-2" name="011-2" class="txtFontSize">${divideMap.NCS502[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS502-3" name="011-3" class="txtFontSize">${divideMap.NCS502[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS502-4" name="011-4" class="txtFontSize">${divideMap.NCS502[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="danger1">
							<td class="view-size font2" >501</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS501-1" name="010-1" class="txtFontSize">${divideMap.NCS501[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS501-2" name="010-2" class="txtFontSize">${divideMap.NCS501[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS501-3" name="010-3" class="txtFontSize">${divideMap.NCS501[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS501-4" name="010-4" class="txtFontSize">${divideMap.NCS501[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="pink1">
							<td class="view-size font2"id="4F">404</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS404-1" name="009-1" class="txtFontSize">${divideMap.NCS404[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS404-2" name="009-2" class="txtFontSize">${divideMap.NCS404[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS404-3" name="009-3" class="txtFontSize">${divideMap.NCS404[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS404-4" name="009-4" class="txtFontSize">${divideMap.NCS404[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="danger1">
							<td class="view-size font2">403</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS403-1" name="008-1" class="txtFontSize">${divideMap.NCS403[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS403-2" name="008-2" class="txtFontSize">${divideMap.NCS403[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS403-3" name="008-3" class="txtFontSize">${divideMap.NCS403[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS403-4" name="008-4" class="txtFontSize">${divideMap.NCS403[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="pink1">
							<td class="view-size font2">402</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS402-1" name="007-1" class="txtFontSize">${divideMap.NCS402[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS402-2" name="007-2" class="txtFontSize">${divideMap.NCS402[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS402-3" name="007-3" class="txtFontSize">${divideMap.NCS402[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS402-4" name="007-4" class="txtFontSize">${divideMap.NCS402[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="danger1">
							<td class="view-size font2" >401</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS401-1" name="006-1" class="txtFontSize">${divideMap.NCS401[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS401-2" name="006-2" class="txtFontSize">${divideMap.NCS401[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS401-3" name="006-3" class="txtFontSize">${divideMap.NCS401[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS401-4" name="006-4" class="txtFontSize">${divideMap.NCS401[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="pink1">
							<td class="view-size font2"id="3F">304</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS304-1" name="005-1" class="txtFontSize">${divideMap.NCS304[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS304-2" name="005-2" class="txtFontSize">${divideMap.NCS304[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS304-3" name="005-3" class="txtFontSize">${divideMap.NCS304[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS304-4" name="005-4" class="txtFontSize">${divideMap.NCS304[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="danger1">
							<td class="view-size font2">303</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS303-1" name="004-1" class="txtFontSize">${divideMap.NCS303[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS303-2" name="004-2" class="txtFontSize">${divideMap.NCS303[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS303-3" name="004-3" class="txtFontSize">${divideMap.NCS303[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS303-4" name="004-4" class="txtFontSize">${divideMap.NCS303[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="pink1">
							<td class="view-size font2">302</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS302-1" name="003-1" class="txtFontSize">${divideMap.NCS302[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS302-2" name="003-2" class="txtFontSize">${divideMap.NCS302[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS302-3" name="003-3" class="txtFontSize">${divideMap.NCS302[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS302-4" name="003-4" class="txtFontSize">${divideMap.NCS302[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="danger1">
							<td class="view-size font2">301</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS301-1" name="002-1" class="txtFontSize">${divideMap.NCS301[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS301-2" name="002-2" class="txtFontSize">${divideMap.NCS301[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS301-3" name="002-3" class="txtFontSize">${divideMap.NCS301[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
										id="NCS301-4" name="002-4" class="txtFontSize">${divideMap.NCS301[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="pink1">
							<td class="view-size font2" id="2F">201</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS201-1" name="001-1" class="txtFontSize">${divideMap.NCS201[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS201-2" name="001-2" class="txtFontSize">${divideMap.NCS201[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS201-3" name="001-3" class="txtFontSize">${divideMap.NCS201[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
									<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
										id="NCS201-4" name="001-4" class="txtFontSize">${divideMap.NCS201[3] }</textarea>
								</p>
							</td>
						</tr>
				</table>
			</div>
		</div>

		<h1 class="text-center">NMIC</h1>
		<div class="container">
			<div class="table col-md-6 margin">
				<table class="table table-striped table-bordered text-center table-hover;">

					<thead>
						<tr class=" wide2">
							<th class="view-size font2 wide1 back-color4 white text-center">class</th>
							<th class="view-size font2 wide1 back-color4 white text-center">1</th>
							<th class="view-size font2 wide1 back-color4 white text-center">2</th>
							<th class="view-size font2 wide1 back-color4 white text-center">3</th>
							<th class="view-size font2 wide1 back-color4 white text-center">4</th>
						</tr>
					</thead>

					<tbody>
						<tr class="denger1">
							<td class="view-size font2"id="M5F">503</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC503-1" name="036-1" class="txtFontSize">${divideMap.NMIC503[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC503-2" name="036-2" class="txtFontSize">${divideMap.NMIC503[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC503-3" name="036-3" class="txtFontSize">${divideMap.NMIC503[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC503-4" name="036-4" class="txtFontSize">${divideMap.NMIC503[3] }</textarea>
								</p>
							</td>
						</tr>
						<tr class="pink1">
							<td class="view-size font2">502</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC502-1" name="035-1" class="txtFontSize">${divideMap.NMIC502[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC502-2" name="035-2" class="txtFontSize">${divideMap.NMIC502[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC502-3" name="035-3" class="txtFontSize">${divideMap.NMIC502[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC502-4" name="035-4" class="txtFontSize">${divideMap.NMIC502[3] }</textarea>
								</p>
							</td>
						</tr>
						<tr class="denger1">
							<td class="view-size font2">501</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC501-1" name="034-1" class="txtFontSize">${divideMap.NMIC501[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC501-2" name="034-2" class="txtFontSize">${divideMap.NMIC501[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC501-3" name="034-3" class="txtFontSize">${divideMap.NMIC501[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC501-4" name="034-4" class="txtFontSize">${divideMap.NMIC501[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="pink1">
							<td class="view-size font2" id="M4F">404</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC404-1" name="033-1" class="txtFontSize">${divideMap.NMIC404[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC404-2" name="033-2" class="txtFontSize">${divideMap.NMIC404[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC404-3" name="033-3" class="txtFontSize">${divideMap.NMIC404[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC404-4" name="033-4" class="txtFontSize">${divideMap.NMIC404[3] }</textarea>
								</p>
							</td>

						</tr>
						<tr class="denger1">
							<td class="view-size font2">403</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC403-1" name="032-1" class="txtFontSize">${divideMap.NMIC403[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC403-2" name="032-2" class="txtFontSize">${divideMap.NMIC403[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC403-3" name="032-3" class="txtFontSize">${divideMap.NMIC403[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC403-4" name="032-4" class="txtFontSize">${divideMap.NMIC403[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="pink1">
							<td class="view-size font2">402</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC402-1" name="031-1" class="txtFontSize">${divideMap.NMIC402[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC402-2" name="031-2" class="txtFontSize">${divideMap.NMIC402[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC402-3" name="031-3" class="txtFontSize">${divideMap.NMIC402[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC402-4" name="031-4" class="txtFontSize">${divideMap.NMIC402[3] }</textarea>
								</p>
							</td>
						</tr>
						<tr class="denger1">
							<td class="view-size font2" >401</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC401-1" name="030-1" class="txtFontSize">${divideMap.NMIC401[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC401-2" name="030-2" class="txtFontSize">${divideMap.NMIC401[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC401-3" name="030-3" class="txtFontSize">${divideMap.NMIC401[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC401-4" name="030-4" class="txtFontSize">${divideMap.NMIC401[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="pink1">
							<td class="view-size font2"id="M3F">304</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC304-1" name="029-1" class="txtFontSize">${divideMap.NMIC304[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC304-2" name="029-2" class="txtFontSize">${divideMap.NMIC304[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC304-3" name="029-3" class="txtFontSize">${divideMap.NMIC304[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC304-4" name="029-4" class="txtFontSize">${divideMap.NMIC304[3] }</textarea>
								</p>
							</td>
						</tr>
						<tr class="denger1">
							<td class="view-size font2">303</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC303-1" name="028-1" class="txtFontSize">${divideMap.NMIC303[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC303-2" name="028-2" class="txtFontSize">${divideMap.NMIC303[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC303-3" name="028-3" class="txtFontSize">${divideMap.NMIC303[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC303-4" name="028-4" class="txtFontSize">${divideMap.NMIC303[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="pink1">
							<td class="view-size font2">302</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC302-1" name="027-1" class="txtFontSize">${divideMap.NMIC302[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC302-2" name="027-2" class="txtFontSize">${divideMap.NMIC302[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC302-3" name="027-3" class="txtFontSize">${divideMap.NMIC302[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC302-4" name="027-4" class="txtFontSize">${divideMap.NMIC302[3] }</textarea>
								</p>
							</td>
						</tr>
						<tr class="denger1">
							<td class="view-size font2" >301</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC301-1" name="026-1" class="txtFontSize">${divideMap.NMIC301[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC301-2" name="026-2" class="txtFontSize">${divideMap.NMIC301[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC301-3" name="026-3" class="txtFontSize">${divideMap.NMIC301[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC301-4" name="026-4" class="txtFontSize">${divideMap.NMIC301[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="pink1">
							<td class="view-size font2"id="M2F">204</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC204-1" name="025-1" class="txtFontSize">${divideMap.NMIC204[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC204-2" name="025-2" class="txtFontSize">${divideMap.NMIC204[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC204-3" name="025-3" class="txtFontSize">${divideMap.NMIC204[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC204-4" name="025-4" class="txtFontSize">${divideMap.NMIC204[3] }</textarea>
								</p>
							</td>
						</tr>
						<tr class="denger1">
							<td class="view-size font2">203</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC203-1" name="024-1" class="txtFontSize">${divideMap.NMIC203[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC203-2" name="024-2" class="txtFontSize">${divideMap.NMIC203[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC203-3" name="024-3" class="txtFontSize">${divideMap.NMIC203[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC203-4" name="024-4" class="txtFontSize">${divideMap.NMIC203[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="pink1">
							<td class="view-size font2">202</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC202-1" name="023-1" class="txtFontSize">${divideMap.NMIC202[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC202-2" name="023-2" class="txtFontSize">${divideMap.NMIC202[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC202-3" name="023-3" class="txtFontSize">${divideMap.NMIC202[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC202-4" name="023-4" class="txtFontSize">${divideMap.NMIC202[3] }</textarea>
								</p>
							</td>
						</tr>
						<tr class="denger1">
							<td class="view-size font2" >201</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC201-1" name="022-1" class="txtFontSize">${divideMap.NMIC201[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC201-2" name="022-2" class="txtFontSize">${divideMap.NMIC201[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC201-3" name="022-3" class="txtFontSize">${divideMap.NMIC201[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #f5f5f5;"
								id="NMIC201-4" name="022-4" class="txtFontSize">${divideMap.NMIC201[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="pink1">
							<td class="view-size font2"id="M1F">101</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC101-1" name="021-1" class="txtFontSize">${divideMap.NMIC101[0] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC101-2" name="021-2" class="txtFontSize">${divideMap.NMIC101[1] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC101-3" name="021-3" class="txtFontSize">${divideMap.NMIC101[2] }</textarea>
								</p>
							</td>

							<td class="size">
								<p class="size drop-target">
								<textarea cols="24" rows="3" maxlength="24" style="overflow: auto; background-color: #dcdcdc;"
								id="NMIC101-4" name="021-4" class="txtFontSize">${divideMap.NMIC101[3] }</textarea>
								</p>
							</td>
						</tr>
				</table>

			</div><!-- class="table col-md-6 " -->


		</div><!-- class="container" -->

</form>