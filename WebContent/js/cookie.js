//クッキー管理スクリプト
$(document).ready(
		function() {

			var getPage = getCookie();


			if(!(getPage == "")){
				$("#cookiePage").val(getPage);
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
						expire.setTime(expire.getTime() + 1000*3600*24*90);
						document.cookie = 'page='
								+ encodeURIComponent(document.title) +
								"; expires=" + expire.toUTCString();
						}else{
							$(this).css("color", "#fff");
							$(".favolite").attr("id","falseCookie")
							delCookie();
						}
					});
		});


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
//クッキー削除
function delCookie()
{
  //日付データを作成する
  var date1 = new Date();

  //1970年1月1日00:00:00の日付データをセットする
  date1.setTime(0);

  //有効期限を過去にして書き込む
  document.cookie = "page=;expires="+date1.toGMTString();

  //ページを再読み込みする


}

//topのsession情報を破棄する
$(window).on("beforeunload",function(e){
			window.sessionStorage.removeItem("top");
});


