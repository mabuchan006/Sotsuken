$(function(e){
		$(".pure-drawer li").click(function(e){
			e.preventDefault();
			var ele = $(this).children().children("a");
			if(ele.attr("href") != undefined){
				$(".pure-pusher").load(ele.attr("href"));
				history.pushState(null,null,ele.attr("href"));
			} else {
				var tempEle = $(this).find("li a[href]");
				$(".pure-pusher").load(tempEle.attr("href"));
				history.pushState(null,null,tempEle.attr("href"));
			}
		});
})