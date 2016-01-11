function toastSelect(status,msg){

	toastr.options = {
		"closeButton" : true,
		"debug" : true,
		"newestOnTop" : true,
		"progressBar" : true,
		"positionClass" : "toast-bottom-right",
		"preventDuplicates" : true,
		"onclick" : null,
		"showDuration" : "300",
		"hideDuration" : "1000",
		"timeOut" : "2000",
		"extendedTimeOut" : "1000",
		"showEasing" : "swing",
		"hideEasing" : "linear",
		"showMethod" : "fadeIn",
		"hideMethod" : "fadeOut"

	}
Command: toastr[status](msg, status+"!!")
}