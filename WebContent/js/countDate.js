function countDate(e){
	var lastDay = "",firstDay = "",preMonth = "", nextMonth = "";
	var dateArray = new Array;
	$.each($(".countDate th:gt(0)"),function(k,v){
		dateArray.push($(v).text());
	})
	for(var i = 0; i < dateArray.length ; i++){
		if(dateArray[i].substr(2) > dateArray[i+1].substr(2)){
			lastDay = dateArray[i];
			preMonth = $.inArray(lastDay,dateArray) + 2;
			firstDay = dateArray[i + 1];
			nextMonth = 28 - $.inArray(firstDay, dateArray);
			break;
		}
	}
	$(".month").html("<th colspan=\""+ preMonth +"\">" + lastDay.substr(0,3) + "</th><th colspan=\""+ nextMonth +"\">" + firstDay.substr(0,3) + "</th>")
	console.log("lastDay : " + lastDay + " : indexNum : " + $.inArray(lastDay,dateArray));
	console.log("firstDay : " + firstDay + " : indexNum : " + $.inArray(firstDay,dateArray));
	//console.log(preMonth + 1 + ":" +nextMonth);
}