// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .



$(document).ready(function(){
	// $(".hidesub").click(function(){
	// 	$(".sub").toggle('slow')
	// });

	$('#choosestore').hide().fadeIn(500)

	// whenever i click more
	// get the class from the link i clicked on
	// toggle all the items with that class

	$('.sub').hide()

	$('.more_button').click(function () {

		var id = $(this).attr("data-id")
		$("#"+id).toggle()
	});

	
});

$(function () {
	$(".quantity_button_bar").hide();
	$(".each_item").hover(function () {
		$(this).find(".quantity_button_bar").toggle();
	});
});





		
