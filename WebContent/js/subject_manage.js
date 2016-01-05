$(document).ready(
		function() {
//
			var getPage = getCookie();

			if(!(getPage == "")){
				$("#cookiePage").val("R4A1");
				$("#cookieSubmit").submit();
			}

			if (getPage == document.title) {
				$(".favolite").css("color","#f5e105")
				$(".favolite").attr("id","trueCookie")
			}


			$(document).on(
					"click",
					".favolite",
					function() {

						if($(".favolite").is("#falseCookie")){
						$(this).css("color", "#f5e105");
						$(".favolite").attr("id","trueCookie")
						//有効期限一か月のクッキー情報セット
						var expire = new Date();
						expire.setTime(expire.getTime() + 1000*3600*24*30);
						document.cookie = 'page='
								+ encodeURIComponent(document.title) +
								"; expires=" + expire.toUTCString();


						}else{
							$(this).css("color", "#fff");
							$(".favolite").attr("id","falseCookie")
							delCookie();

						}

					});

			if ($("#addTb-tbody > tr").size() < 2) {
				$("#addTb-tbody > tr").clone(true).insertAfter(
						$("#addTb-tbody > tr"));
			}// if

			firstID();

			// +ボタン押されたら行の追加
			$(document).on(
					"click",
					".addList",
					function() {

						// parent().parent() => td > tr
						($("#addTb-tbody > tr").eq(0)).clone(true).insertAfter(
								$(this).parent().parent());

						firstID();

					});

			// -ボタン押されたら行の削除
			$(document).on("click", ".removeList", function() {
				if ($(".removeList").size > 1) {
					$(this).parent().parent().empty();
					firstID();
				} else {
					$(".removeList").css("opacity", "0.1");

				}

			});

		});

// 動的にIDの連番を格納
function firstID() {
	var cnt = 1;
	$(".subjectName").each(function() {

		$(this).attr("name", "subjectName" + cnt);

		cnt++;
	});

	var cnt = 1;
	$(".bringThings").each(function() {

		$(this).attr("name", "bringThings" + cnt);

		cnt++;
	});

	var cnt = 1;
	$(".grade").each(function() {

		$(this).attr("name", "grade_name" + cnt);
		$(this).attr("id", "grade_id" + cnt);
		$(this).attr("onchange", "selectChange(" + cnt + ")");

		cnt++;
	});
	var cnt = 1;

	$(".cource").each(function() {

		$(this).attr("name", "cource_name" + cnt);
		$(this).attr("id", "cource_id" + cnt);
		cnt++;
	});

	var cnt = 1;

	$(".addList").each(function() {

		$(this).attr("id", "addBtn" + cnt);
		cnt++;
	});

}

//Cookie取得
function getCookie() {

	var page = null

	cookieName = document.cookie
	var position = cookieName.indexOf("page=")
	if (position != -1) {

		var startIndex = position + "page=".length
		var endIndex = cookieName.indexOf(";", startIndex)

		if (endIndex == -1)

			endIndex = cookieName.length

	}
	page = decodeURIComponent(cookieName.substring(startIndex, endIndex))

	return page

}

function delCookie(){
	var date = new Date();
	date.setTime(0);
	document.cookie("page=;expires="+date.toUTCString());
}
