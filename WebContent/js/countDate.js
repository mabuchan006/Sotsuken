function countDate(e){
	var lastDay = "",firstDay = "",preMonth = "", nextMonth = "", flag = new Boolean(false);
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
			flag = new Boolean(true);
			break;
		}
	}
	if(flag){
		$(".month").html("<th colspan=\""+ preMonth +"\">" + lastDay.substr(0,3) + "</th><th colspan=\""+ nextMonth +"\">" + firstDay.substr(0,3) + "</th>")
	} else {
		$(".month").html("<th colspan=\"31\">" + dateArray[0].substr(0,3) + "</th>")
	}
	console.log("lastDay : " + lastDay + " : indexNum : " + $.inArray(lastDay,dateArray));
	console.log("firstDay : " + firstDay + " : indexNum : " + $.inArray(firstDay,dateArray));
	console.log(flag);
	//console.log(preMonth + 1 + ":" +nextMonth);
}