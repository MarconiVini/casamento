$(document).ready(function() {
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