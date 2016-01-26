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
		info.css.add("http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css");
		info.css.add("/Sotsuken/css/custom.css");
		info.css.add("/Sotsuken/css/style.css");
		info.css.add("https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css");
		info.css.add("/Sotsuken/css/pure-drawer.css");
		info.css.add("/Sotsuken/bootstrap/css/bootstrap-datepicker.min.css");


		info.js.add("/Sotsuken/js/jquery-2.1.1.min.js");
		info.js.add("/Sotsuken/bootstrap/js/bootstrap.min.js");
		info.js.add("/Sotsuken/js/jquery-1.10.0.ui.js");
		info.js.add("/Sotsuken/js/fixedTableHeader.js");
		info.js.add("/Sotsuken/js/modal.js");
		info.js.add("/Sotsuken/js/dragdrop.js");
		info.js.add("/Sotsuken/js/clickEvent.js");
		info.js.add("/Sotsuken/js/formCheck.js");
		info.js.add("/Sotsuken/js/jquery.toaster.js");
		info.js.add("https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js");
		info.js.add("/Sotsuken/js/toastSelect.js");
		info.js.add("/Sotsuken/bootstrap/js/bootstrap-datepicker.js");
		info.js.add("/Sotsuken/bootstrap/js/bootstrap-datepicker.ja.min.js");
		info.js.add("/Sotsuken/js/tempEdit.js");
		info.js.add("/Sotsuken/js/to-top.js");





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

    	info.js.add("/Sotsuken/bootstrap/js/bootstrap-dropdown.js");
    	info.js.add("/Sotsuken/js/jquery-2.1.1.min.js");
    	info.js.add("/Sotsuken/bootstrap/js/bootstrap.min.js");
    	info.js.add("/Sotsuken/js/jquery.appear.js");
    	info.js.add("/Sotsuken/js/belongings.js");
    	info.js.add("/Sotsuken/js/cookie.js");
    	info.js.add("/Sotsuken/js/countDate.js");

		return info;
	}

	public layoutIncludeInfo manage_layout(){
		layoutIncludeInfo info = new layoutIncludeInfo();
		info.css.add("/Sotsuken/bootstrap/css/bootstrap.min.css");
		info.css.add("/Sotsuken/css/font-awesome.min.css");
		info.css.add("/Sotsuken/css/custom.css");
		info.css.add("/Sotsuken/css/style.css");
		info.css.add("/Sotsuken/css/pure-drawer.css");
		info.css.add("https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css");
		info.css.add("//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/css/bootstrap-editable.css");
		info.css.add("/Sotsuken/bootstrap/css/bootstrap-datepicker.min.css");

		info.js.add("/Sotsuken/js/jquery-2.1.1.min.js");
		info.js.add("http://code.jquery.com/jquery-1.9.1.min.js");
		info.js.add("/Sotsuken/bootstrap/js/bootstrap.min.js");
		info.js.add("/Sotsuken/js/jquery.appear.js");
		info.js.add("/Sotsuken/js/subject_manage.js");
		info.js.add("/Sotsuken/js/jquery.toaster.js");
		info.js.add("https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js");
		info.js.add("/Sotsuken/js/toastSelect.js");
		info.js.add("/Sotsuken/js/editable.js");
		info.js.add("//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/js/bootstrap-editable.min.js");
		info.js.add("/Sotsuken/bootstrap/js/bootstrap-datepicker.js");
		info.js.add("/Sotsuken/bootstrap/js/bootstrap-datepicker.ja.min.js");
		info.js.add("/Sotsuken/bootstrap/js/passwordEdit.js");

		return info;
	}

}
