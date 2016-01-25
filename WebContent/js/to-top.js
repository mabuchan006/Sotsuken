$(window).load(function(){
	$(window).scroll(function(){
		if($(this).scrollTop() < 100){
			var a = $(window).height();
			console.log(a);
			var b = $("body").height();
			console.log(b);
			$("#to-top").fadeIn("slow");
		}
	});
});