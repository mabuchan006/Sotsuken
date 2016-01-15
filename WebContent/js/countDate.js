function countDate(e){
	var lastDay = "",firstDay = "";
	var dateArray = new Array;
	$.each($(".countDate th:gt(0)"),function(k,v){
		dateArray.push($(v).text())
	})
	for(var i = 0; i < dateArray.length ; i++){
		if(dateArray[i] > dateArray[i+1]){
			lastDay = dateArray[i];
			firstDay = dateArray[i + 1];
			break;
		}
	}
	console.log("lastDay : " + lastDay + " : indexNum : " + $.inArray(lastDay,dateArray));
	console.log("firstDay : " + firstDay + " : indexNum : " + $.inArray(firstDay,dateArray));
}