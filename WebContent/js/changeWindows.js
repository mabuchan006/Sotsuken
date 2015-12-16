/**
 *
 */
w = $(window).width() * 2;
$("#shade").animate({"left":w},500);

$("a[href]").click(function(e){
    link = $(this).attr("href");
    if (!link.match(/#/i)) {
       e.preventDefault();
       $("#shade").animate( {"left":"0px"} , 500 , function(){location.href=link;} );
    }
});