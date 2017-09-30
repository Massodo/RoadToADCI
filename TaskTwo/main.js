$(document).ready(function(){
	
	var step = 1;
		
	$('#btnNext').on('click' , function(event){
		$('#step-' + step).addClass("not-active").removeClass("active");
		if(step < 4){
			step++;
		}
		$('#step-' + step).addClass("active").removeClass("not-active");		
	});
	
	$('#btnBack').on('click' , function(event){
		$('#step-' + step).addClass("not-active").removeClass("active");
		if(step > 1){
			step--;
		}
		$('#step-' + step).addClass("active").removeClass("not-active");
	});
	
});