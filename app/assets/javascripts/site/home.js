$(document).ready(function() {
	$('.PhotoEffect').each(function() {
		$(this).find("li").hide().first().addClass("actual").fadeIn();
		function call() {
			var timeout = Math.random()*3000 + 2000;
			setTimeout(function() {
				if($(".PhotoEffect").find("li").hasClass("actual")){
					$(".PhotoEffect").find("li").filter(".actual").removeClass("actual").next().fadeIn().addClass("actual");
				}else{
					$(".PhotoEffect").find("li").hide().first().fadeIn().addClass("actual");
				}
				call();
			}, timeout);
		}

		call();
	});
	$('.PhotoEffect2').each(function() {
		$(this).find("li").hide().first().addClass("actual").fadeIn();
		function call() {
			var timeout = Math.random()*3000 + 2000;
			setTimeout(function() {
				if($('.PhotoEffect2').find("li").hasClass("actual")){
					$('.PhotoEffect2').find("li").filter(".actual").removeClass("actual").next().fadeIn().addClass("actual");
				}else{
					$('.PhotoEffect2').find("li").hide().first().fadeIn().addClass("actual");
				}
				call();
			}, timeout);
		}

		call();
	});
});

