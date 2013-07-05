// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
$(document).ready(function(){$("#switcher a").click(function(e){e.preventDefault(),$(this).hasClass("ico-col1")?($(this).removeClass("ico-col1").addClass("ico-col2").attr("title","Mostrar Menu Principal"),$("#aside").animate({width:"toggle"}),$("#content").css("margin-left","15px")):($(this).removeClass("ico-col2").addClass("ico-col1").attr("title","Mostrar apenas uma coluna"),$("#aside").animate({width:"toggle"}),$("#content").css("margin-left","0"))}),$(".msg.info").fadeIn(1e3).delay(1e4).fadeOut(3e3),$(".msg.error").fadeIn(1e3).delay(1e4).fadeOut(3e3),$(".UrlSugestao").data("textinput",$(".UrlSugestao").val()),$("a.BtnSugestao").click(function(e){e.preventDefault(),url=$(this).find("span").html().trim(),$(".UrlSugestao").removeAttr("disabled").val(url),$(".UrlSugestao").data("textinput",$(".UrlSugestao").val())}),$(".UrlSugestao").blur(function(){return checkbox=$("#admin_autorizated"),checkbox.attr("checked")?!1:($(this).val($(this).data("textinput")),!1)})});