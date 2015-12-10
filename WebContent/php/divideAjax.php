<?php

mysql_set_charset('utf8');
//データベース接続
$link=mysql_connect("localhost","ncs_sotsuken","TJVwVd9Q") or die("失敗");
print "成功";


//データベース選択
$db_selected = mysql_select_db('sotsuken', $link);
if (!$db_selected){
	die('データベース選択失敗です。'.mysql_error());
}

//Ajaxから曜日情報受け取り
//$week=$_POST['week'];

//曜日ごとのSELECT
	$result = mysql_query('select r.roomName, d.period, c.classID from tbl_timedivide d, tbl_room r, tbl_class c
											where d.roomID = r.roomID and d.classID = c.classID and week = "月" ');
	if (!$result) {
		die('クエリーが失敗しました。'.mysql_error());
	}

	$viewMap = array();
	//とってきた情報を各行ずつ入れる。ループにてすべて出す
	while ($row = mysql_fetch_assoc($result)) {
		$viewMap[] = array(
				'roomName' =>$row->roomName,
				'period' =>$row->period,
				'classID' =>$row->classID);
	}
	mysql_close($link);
	header('Content-Type: text/javascript; charset=utf-8');
	echo sprintf("callback(%s)",json_encode($viewMap));




?>