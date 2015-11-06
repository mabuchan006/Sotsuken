<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AdminTimeTable</title>
<link href="css/TimeTable.css" rel="stylesheet">
</head>
<body>

	<!-- テーブル仮 -->
	<p>時間割管理テーブル</p>
	<table border=4>
		<tr>
			<td colspan="2"></td>
			<th colspan="13">10月</th>
		</tr>

		<tr>
			<th>クラス</th>
			<th>時限</th>
			<td>10/19</td>
			<td>10/20</td>
			<td>10/21</td>
			<td>10/22</td>
			<td>10/23</td>
			<td>10/24</td>
			<td>10/25</td>
			<td>10/26</td>
			<td>10/27</td>
			<td>10/28</td>
			<td>10/29</td>
			<td>10/30</td>
			<td>10/31</td>
		</tr>

		<tr>
			<th colspan="2"></th>
			<td>月</td>
			<td>火</td>
			<td>水</td>
			<td>木</td>
			<td>金</td>
			<td>土</td>
			<td>日</td>
			<td>月</td>
			<td>火</td>
			<td>水</td>
			<td>木</td>
			<td>金</td>
			<td>土</td>
		</tr>

		<tr>
			<th rowspan=13>RXAXX</th>
			<th rowspan=3>1</th>
			<td>授業</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>

		<tr>
			<td>教室</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>

		<tr>
			<td>講師</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>

		<tr>
			<th rowspan=3>2</th>
			<td>授業</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>

		<tr>
			<td>教室</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>

		<tr>
			<td>講師</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>

		<tr>
			<th rowspan=3>3</th>
			<td>授業</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>

		<tr>
			<td>教室</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>

		<tr>
			<td>講師</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>

		<tr>
			<th rowspan=3>4</th>
			<td>授業</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>

		<tr>
			<td>教室</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>

		<tr>
			<td>講師</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>

	</table>


	<p>イベント情報</p>
	<table border=3>

		<tr>
			<th>日付</th>
			<th>イベント名</th>
			<th>対応クラス</th>
			<th>教室</th>
			<th>講師</th>
			<th>コマ数</th>
			<th>終日</th>
		</tr>

		<!-- 逐次更新 -->
		<tr>
			<td>平成27年12月1日</td>
			<td>スーツセミナー</td>
			<td>R3A1</td>
			<td>J601</td>
			<td>阿知波</td>
			<td>2</td>
			<td>×</td>
		</tr>

	</table>




</body>
</html>