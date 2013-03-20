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
	/*
	value = parseInt($('.objetivo1 .image .value').html());
	percent = (total*100)/value;
	$('.bar-container .bar-progress').css('width', percent+"%");
	$('.objetivo1 .porcentagem').text(Math.floor(percent)+"%");
	*/
	//console.log(percent); 
	
	var total = 0;
	var totalearned = parseInt($('.totalearned').text());
	var percent = 0;
	console.log("totalearned", totalearned);
	$('.objetivo').each(function(){
	    total = parseInt($(this).find('.image .value').text());
	    if (total < totalearned){
	        $(this).addClass("obj-completo");
	        $(this).find('.porcentagem').text('100%');
	        $(this).find('.bar-container .bar-progress').animate({
	        	width: '100%'
	        }, 3000, 'linear');
	        totalearned -= total;
	    }else{
	       
	        percent = Math.floor((totalearned*100)/total);
	        //$(this).find('.porcentagem').text(percent + "%");
	        $(this).find('.bar-container .bar-progress').animate({
	        	width: percent+"%"
	        }, 3000, 'linear');
	        
	    }
	    
	    intervalOfCounter($(this));
	    
	});
	
	function intervalOfCounter(u){
	    var count = 0;
	    var timeId = setInterval(function(){
	    	u.find('.porcentagem').html(count + "%");
	    	count++;
	    	if (count > percent)
	    		clearInterval(timeId);
	    }, Math.floor(3000/percent));
    }
	
	if ($('.flash').length > 0){
    	$("html, body").animate({ scrollTop: $(document).height() }, "slow");
    	alert($('.flash').text());
    }
	
});
















