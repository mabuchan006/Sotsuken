//topのsession情報を破棄する
$(document).ready(function(){
$(window).on("beforeunload",function(e){
			window.sessionStorage.removeItem("top");
});
});