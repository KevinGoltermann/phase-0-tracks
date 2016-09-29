$(document).ready(function(){
	
	$("#main_header").css("text-align", "center");
	$("#secondary_header").css("text-align", "center");	
	$("#entire_list").css("text-align", "center");
	$("#entire_list").css("list-style-position", "inside");

	$("#task_1").click(function(){
		$(this).hide();
	});

	$("#task_2").click(function(){
		$(this).hide();
	});

	$("#task_3").click(function(){
		$(this).hide();
	});

	$("#task_4").click(function(){
		$(this).hide();
	});

	$("#task_5").click(function(){
		$(this).hide();
	});

	$("#button").click(function(){
		alert('Congrats....Party Time!!!!');
	});




});