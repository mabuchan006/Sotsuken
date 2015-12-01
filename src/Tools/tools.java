package Tools;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public class tools {
	ArrayList<String> css = new ArrayList<String>(); // css用List
	ArrayList<String> js = new ArrayList<String>(); // JavaScript用List

	@SuppressWarnings("unused")
	private void getIncludeFile(HttpServletRequest request) {
		css.add("/Sotsuken/bootstrap/css/bootstrap.min.css");
		css.add("/Sotsuken/css/font-awesome.min.css");
		css.add("/Sotsuken/css/custom.css");
		css.add("/Sotsuken/css/style.css");
		css.add("/Sotsuken/css/pure-drawer.css");
		css.add("http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css");

		js.add("/Sotsuken/js/jquery-2.1.1.min.js");
		js.add("/Sotsuken/bootstrap/js/bootstrap.min.js");
		js.add("/Sotsuken/js/dragdrop.js");
		js.add("/Sotsuken/js/modal.js");
		js.add("http://code.jquery.com/ui/1.10.0/jquery-ui.js");
		request.setAttribute("css", css);
		request.setAttribute("js", js);
	}

}
