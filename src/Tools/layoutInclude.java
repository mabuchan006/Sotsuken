package Tools;

import java.util.ArrayList;

public class layoutInclude {



	public layoutInclude() {
		super();
	}
	public class layoutIncludeInfo{
		public ArrayList<String> css = new ArrayList<String>(); // css用List
		public ArrayList<String> js = new ArrayList<String>(); // JavaScript用List
	}

	public layoutIncludeInfo layout()  {
		layoutIncludeInfo info = new layoutIncludeInfo();

		info.css.add("/Sotsuken/bootstrap/css/bootstrap.min.css");
		info.css.add("/Sotsuken/css/font-awesome.min.css");
		info.css.add("/Sotsuken/css/animate.css");
		info.css.add("http://fonts.googleapis.com/css?family=Lobster");
		//info.css.add("http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css");
		info.css.add("/Sotsuken/css/style.css");
		info.css.add("/Sotsuken/css/custom.css");
		info.css.add("/Sotsuken/css/pure-drawer.css");


		info.js.add("/Sotsuken/js/jquery-2.1.1.min.js");
		info.js.add("/Sotsuken/bootstrap/js/bootstrap.min.js");
		info.js.add("/Sotsuken/js/jquery-1.10.0.ui.js");
		info.js.add("/Sotsuken/js/fixedTableHeader.js");
		info.js.add("/Sotsuken/js/modal.js");
		info.js.add("/Sotsuken/js/dragdrop.js");
		info.js.add("/Sotsuken/js/clickEvent.js");
		info.js.add("/Sotsuken/js/formCheck.js");

		return info;
	}

	public layoutIncludeInfo public_layout()  {
		layoutIncludeInfo info = new layoutIncludeInfo();
		//●R~A_master.jspで使用
    	info.css.add("/Sotsuken/bootstrap/css/bootstrap.min.css");
    	info.css.add("/Sotsuken/css/style.css");
    	info.css.add("/Sotsuken/css/animate.css");
    	info.css.add("/Sotsuken/css/font-awesome.min.css");
    	info.css.add("http://fonts.googleapis.com/css?family=Lobster");
    	info.css.add("/Sotsuken/css/print.css");


    	info.js.add("/Sotsuken/bootstrap/js/bootstrap-dropdown.js");
    	info.js.add("/Sotsuken/js/jquery-2.1.1.min.js");
    	info.js.add("/Sotsuken/bootstrap/js/bootstrap.min.js");
    	info.js.add("/Sotsuken/js/jquery.appear.js");
    	info.js.add("/Sotsuken/js/belongings.js");

		return info;
	}

}
