$(window).load(function(){
	$('.fancybox').fancybox();
	/*
	$('.fancybox img').css({
		position : 'absolute',
		left : ($(this).parent.width() - $('.fancybox img').outerWidth()) / 2,
		top : ($(this).parent.height() - $('.fancybox img').outerHeight()) / 2
	});*/
	$('.fancybox img').each(function(){
		$(this).css({
			position : 'absolute',
			left : ($(this).parent().width() - $(this).outerWidth()) / 2,
			top : ($(this).parent().height() - $(this).outerHeight()) / 2
		})
	});
});
$(document).ready(function() {
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

}); 