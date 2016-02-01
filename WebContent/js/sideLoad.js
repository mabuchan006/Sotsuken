$(function(e) {
	$(".manage").click(function(e) {
		e.preventDefault();
		var ele = $(this).children().children("a[href]");
		window.setTimeout(pageLoad(ele.attr("href")), 2000);
	});
	$(".editView").click(function(e) {
		e.preventDefault();
		var ele = $(this).children("a[href]");
		window.setTimeout(pageLoad(ele.attr("href")), 2000);
	});
	$("h1 > .manage-top").click(function(e) {
		e.preventDefault();
		var ele = $(this);
		window.setTimeout(pageLoad(ele.attr("href")), 2000);
	});
})

function pageLoad(url) {
	$(".pure-pusher").load(url,function() {
		history.pushState(null, null, url);
	})
}