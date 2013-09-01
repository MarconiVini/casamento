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
	//menu principal a parte dos noivos
	$('.albumlink').next().hide();
	$('.albumlink').on('click', function(event){
		event.stopPropagation();
		event.preventDefault();
		return false;
	});
	$('.albummenu').on('mouseenter', function(){
		$(this).find('ul').stop(true).slideToggle();
	});
	$('.albummenu').on('mouseleave', function(){
		$(this).find('ul').stop(true).slideToggle();
	});
	//$('.main-menu').find('li:eq(1)').on('click', function(){
	//    alert('Você poderá confirmar sua presença assim que enviarmos o convite para os convidados !');
	//});
});























