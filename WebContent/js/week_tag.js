function reWrite(num) {
	if (document.getElementById) {
		if (num == 0) {
			document.getElementById("#mon").innerHTML='<li class="h4 active" id="mon" name="mon" onclick="reWrite( 0 )"><a href="#">月</a></li>';
			document.getElementById("#tue").innerHTML='<li class="h4" id="tue" onclick="reWrite( 1 )"><a href="#">火</a></li>';
			document.getElementById("#wed").innerHTML='<li class="h4" id="wed" onclick="reWrite( 2 )"><a href="#">水</a></li>';
			document.getElementById("#thu").innerHTML='<li class="h4" id="thu" onclick="reWrite( 3 )"><a href="#">木</a></li>';
			document.getElementById("#fri").innerHTML='<li class="h4" id="fri" onclick="reWrite( 4 )"><a href="#">金</a></li>';
		} else if (num == 1) {
			document.getElementById("#mon").innerHTML='<li class="h4" id="mon" onclick="reWrite( 0 )"><a href="#">月</a></li>';
			document.getElementById("#tue").innerHTML='<li class="h4 active" id="tue" name="tue" onclick="reWrite( 1 )"><a href="#">火</a></li>';
			document.getElementById("#wed").innerHTML='<li class="h4" id="wed" onclick="reWrite( 2 )"><a href="#">水</a></li>';
			document.getElementById("#thu").innerHTML='<li class="h4" id="thu" onclick="reWrite( 3 )"><a href="#">木</a></li>';
			document.getElementById("#fri").innerHTML='<li class="h4" id="fri" onclick="reWrite( 4 )"><a href="#">金</a></li>';
		} else if (num == 2) {
			document.getElementById("#mon").innerHTML='<li class="h4" id="mon" onclick="reWrite( 0 )"><a href="#">月</a></li>';
			document.getElementById("#tue").innerHTML='<li class="h4" id="tue" onclick="reWrite( 1 )"><a href="#">火</a></li>';
			document.getElementById("#wed").innerHTML='<li class="h4 active" id="wed" name="wed" onclick="reWrite( 2 )"><a href="#">水</a></li>';
			document.getElementById("#thu").innerHTML='<li class="h4" id="thu" onclick="reWrite( 3 )"><a href="#">木</a></li>';
			document.getElementById("#fri").innerHTML='<li class="h4" id="fri" onclick="reWrite( 4 )"><a href="#">金</a></li>';
		} else if (num == 3) {
			document.getElementById("#mon").innerHTML='<li class="h4" id="mon" onclick="reWrite( 0 )"><a href="#">月</a></li>';
			document.getElementById("#tue").innerHTML='<li class="h4" id="tue" onclick="reWrite( 1 )"><a href="#">火</a></li>';
			document.getElementById("#wed").innerHTML='<li class="h4" id="wed" onclick="reWrite( 2 )"><a href="#">水</a></li>';
			document.getElementById("#thu").innerHTML='<li class="h4 active" id="thu" name="thu" onclick="reWrite( 3 )"><a href="#">木</a></li>';
			document.getElementById("#fri").innerHTML='<li class="h4" id="fri" onclick="reWrite( 4 )"><a href="#">金</a></li>';
		} else if (num == 4) {
			document.getElementById("#mon").innerHTML='<li class="h4" id="mon" onclick="reWrite( 0 )"><a href="#">月</a></li>';
			document.getElementById("#tue").innerHTML='<li class="h4" id="tue" onclick="reWrite( 1 )"><a href="#">火</a></li>';
			document.getElementById("#wed").innerHTML='<li class="h4" id="wed" onclick="reWrite( 2 )"><a href="#">水</a></li>';
			document.getElementById("#thu").innerHTML='<li class="h4" id="thu" onclick="reWrite( 3 )"><a href="#">木</a></li>';
			document.getElementById("#fri").innerHTML='<li class="h4 active" id="fri" name="fri" onclick="reWrite( 4 )"><a href="#">金</a></li>';
		}
	}
}