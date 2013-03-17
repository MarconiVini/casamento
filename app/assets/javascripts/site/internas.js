$(document).ready(function() {
	$(".bloco-local").first().fadeIn(3000);
	$(".buttons-container").find('a').on('click', function(event) {
		event.stopPropagation();
		event.preventDefault();
		$(".bluebutton-big").removeClass().addClass("greybutton-big");
		$(this).removeClass("greybutton-big").addClass("bluebutton-big");
		name = $(this).data('name');
		$(".bloco-local").hide();
		$("." + name + "").fadeIn(800).addClass("active");
	});	
	
	//formulario add acompanhante
	$('.add-acompanhante').on('click', function(event){
		event.stopPropagation;
		event.preventDefault;
		$('.form-add').slideToggle(800);
		return false;
	})
	//Mensagem de erro
	error = $('.notice');
	if (error.length != 0){
		$('.form-add').slideToggle(800);
	}
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
	
	//mensagens de erros
	$('.cota-form ul li .field_with_errors').prev().css('border-bottom', "3px solid #F9CCCC");
	
	//Funcionalidade das cotas
	total = parseInt($('.objetivo1 .porcentagem .value').html());
	value = parseInt($('.objetivo1 .image .value').html());
	percent = (total*100)/value;
	$('.bar-container .bar-progress').css('width', percent+"%");
	$('.objetivo1 .porcentagem').text(Math.floor(percent)+"%");
	
	//console.log(percent); 
	
	if ($('.flash').length > 0){
    	$("html, body").animate({ scrollTop: $(document).height() }, "slow");
    	alert($('.flash').text());
    }
	
});
















