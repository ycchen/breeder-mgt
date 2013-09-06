$(function(){
	 	$("#listBtns a").click(function(){
	 		if ($(this).data("id") == 'already'){
	 			$(".already").show();
 				$(".due").hide();
	 		}else if ($(this).data("id") == 'due'){
				$(".due").show();
 				$(".already").hide();
	 		}else{
				$(".due").show();
 				$(".already").show();
	 		}

	 	});

 	$(".due").show();
 	$(".already").hide();
});