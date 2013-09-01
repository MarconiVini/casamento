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
	$('.add-acompanhante').on('click', function(event) {
		event.stopPropagation
		event.preventDefault
		$('.form-add').slideToggle(800);
		return false;
	})
	//Mensagem de erro
	error = $('.notice');
	if (error.length != 0) {
		$('.form-add').slideToggle(800);
	}
	//menu principal a parte dos noivos
	$('.albumlink').next().hide();
	$('.albumlink').on('click', function(event) {
		event.stopPropagation();
		event.preventDefault();
		return false;
	});
	$('.albummenu').on('mouseenter', function() {
		$(this).find('ul').stop(true).slideToggle();
	});
	$('.albummenu').on('mouseleave', function() {
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
	//385px
	var total = 0;
	var totalearned = parseInt($('.totalearned').text());
	var percent = 0;
	$('.objetivo').each(function() {
		total = parseInt($(this).find('.image .value').text());
		if (total < totalearned) {
			$(this).find('.porcentagem').text('100%');
			$(this).find('.bar-container .bar-progress').animate({
				width : '385px'
			}, 3000, 'linear', function() {
				$(this).closest('.objetivo').addClass("obj-completo");
			});
			totalearned -= total;
			porcantagemTotal = 100;
		} else {
			percent = Math.floor((totalearned * 100) / total);
			if (totalearned < 0) {
				porcantagemTotal = 0;
			} else {
				$(this).find('.bar-container .bar-progress').animate({
					width : ((385*percent)/100) + "px"
				}, 3000, 'linear');
				porcantagemTotal = percent;
				console.log('else');
				totalearned -= total;
			}
		}
		intervalOfCounter($(this), porcantagemTotal);

	});

	function intervalOfCounter(u, porcantagemTotal) {
		var count = 0;
		var timeId = setInterval(function() {
			u.find('.porcentagem').html(count + "%");
			count++;
			if (count > porcantagemTotal)
				clearInterval(timeId);
		}, Math.floor(3000 / porcantagemTotal));
	}

	//http://stackoverflow.com/questions/6215779/scroll-if-element-is-not-visible

	if ($('.flash').length > 0) {
		$("html, body").animate({
			scrollTop : $(document).height()
		}, "slow");
		alert($('.flash').text());
	}
	//$('.main-menu').find('li:eq(1)').on('click', function(){
	//    alert('Você poderá confirmar sua presença assim que enviarmos o convite para os convidados !');
	//});
	
	$('.outrovalor input').on('click', function(){
		$('.new-value').toggleClass('displaynone');		
	});
	
	$('.value_other').on('blur', function(){
		var regExpr = new RegExp("\d");
		if (regExpr.test($(this).val())) {
			console.log("$(this).val: " + $(this).val());
			console.log("regExpr.test($(this).val()): " + regExpr.test($(this).val()));
	      $(this).val("");
	    }
		
	});
	
	function testField(field) {
	    var regExpr = new RegExp("^\d*\.?\d*$");
	    if (!regExpr.test(field.value)) {
	      // Case of error
	      field.value = "";
	    }
	}
});







































