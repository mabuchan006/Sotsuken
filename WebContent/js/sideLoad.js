$(function(e){
	$(".manage").click(function(e){
		e.preventDefault();
		var ele = $(this).children().children("a[href]");
		window.setTimeout(pageLoad(ele.attr("href")), 2000);
	});
	$(".editView").click(function(e){
		e.preventDefault();
		var ele = $(this).children("a[href]");
		window.setTimeout(pageLoad(ele.attr("href")), 2000);
	});
	$("h1 > .manage-top").click(function(e){
		e.preventDefault();
		var ele = $(this);
		window.setTimeout(pageLoad(ele.attr("href")), 2000);
	});
})

function pageLoad(url){
	$.ajax({
		type : "GET",
		url : url,
		dataType : "html",
		timeout : 10000
	}).done(function(res){
		$(".pure-pusher").html(res);
		history.pushState(null, null, url);
	}).fail(function(jqXHR, textStatus, errorThrown ){//失敗
		console.log("NG:" + jqXHR.status + ":" + textStatus.status + ":" + errorThrown);
		alert("エラーが発生しました\nサーバ管理者へ問い合わせてください");
	})
}