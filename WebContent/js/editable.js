$(document).ready(
		function(){
			var data="";


$(document).on("click",".edit_class",function(e){
				var targetable = (($(this).parent().parent().parent()).find(".classname"));
				e.stopPropagation();
				$(targetable).trigger("click");
			});

$(document).on("click",".edit_subject",function(e){
	var targetable = (($(this).parent().parent().parent()).find(".bringthings"));
	e.stopPropagation();
	$(targetable).trigger("click");
});

$(document).on("click",".edit_teacher",function(e){
	var targetable = (($(this).parent().parent().parent()).find(".teachername"));
	e.stopPropagation();
	$(targetable).trigger("click");
});


$(document).on("click",".edit_event",function(e){
	var targetable = (($(this).parent().parent().parent()).find(".eventName"));
	e.stopPropagation();
	$(targetable).trigger("click");
});
			//input view
			$.fn.editable.defaults.mode = 'inline';
			$.fn.editableform.buttons =
				 '<button type="submit" class="btn btn-success editable-submit btn-mini edit-btn"><i class="fa fa-check"></i></button>' +
				 '<button type="button" class="btn btn-danger editable-cancel btn-mini remove-btn"><i class="fa fa-times"></i></button>';

			//ajax設定
			//class pk1
			$('.classname').editable({

				type:"text",
			    pk: 1,
			    url: '/Sotsuken/ManageEdit',
			    title: 'Enter classname',
		        //responseキャッシュクリア
		        beforeSend : function( xhr ){
		            xhr.setRequestHeader("If-Modified-Since", "Thu, 01 Jun 1970 00:00:00 GMT");
		        },
			    	success: function(response, newValue) {
			    		toastSelect("success",newValue+"に更新しました")
			            if(response.status == 'error') alert( "error"+response.msg); //msg will be shown in editable form
			        }
			});

			//subject pk2
			$('.bringthings').editable({

				type:"text",
			    pk: 2,
			    url: '/Sotsuken/ManageEdit',
			    title: 'Enter bringthings',

		        //responseキャッシュクリア
		        beforeSend : function( xhr ){
		            xhr.setRequestHeader("If-Modified-Since", "Thu, 01 Jun 1970 00:00:00 GMT");
		        },
			    	success: function(response, newValue)
			    	{
			    		toastSelect("success","持ち物を"+newValue+"に更新しました")
			            if(response.status == 'error') alert( "error"+response.msg); //msg will be shown in editable form
			        }
			});

			//teacher pk3
			$('.teachername').editable({

				type:'text',
			    pk: 3,
			    url: '/Sotsuken/ManageEdit',
			    title: 'Enter teachername',

		        //responseキャッシュクリア
		        beforeSend : function( xhr ){
		            xhr.setRequestHeader("If-Modified-Since", "Thu, 01 Jun 1970 00:00:00 GMT");
		        },
			    	success: function(response, newValue) {
			    		toastSelect("success",newValue+"に更新しました")
			            if(response.status == 'error') alert( "error"+response.msg); //msg will be shown in editable form
			        }
			});

			//teacher pk3
			$('.eventName').editable({

				type:'text',
			    pk: 4,
			    url: '/Sotsuken/ManageEdit',
			    title: 'Enter eventName',

		        //responseキャッシュクリア
		        beforeSend : function( xhr ){
		            xhr.setRequestHeader("If-Modified-Since", "Thu, 01 Jun 1970 00:00:00 GMT");
		        },
			    	success: function(response, newValue) {
			    		toastSelect("success",newValue+"に更新しました")
			            if(response.status == 'error') alert( "error"+response.msg); //msg will be shown in editable form
			        }
			});

});