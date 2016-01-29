$(function(e){
		$(".manage").click(function(e){
			e.preventDefault();
			var ele = $(this).children().children("a[href]");
			$(".pure-pusher").load(ele.attr("href"));
			history.pushState(null,null,ele.attr("href"));
		});
		$(".editView").click(function(e){
			e.preventDefault();
			var ele = $(this).children("a[href]");
			$(".pure-pusher").load(ele.attr("href"));
			history.pushState(null,null,ele.attr("href"));
		});
		$("h1 > .manage-top").click(function(e){
			e.preventDefault();
			var ele = $(this);
			$(".pure-pusher").load(ele.attr("href"));
			history.pushState(null,null,ele.attr("href"));
		});
})