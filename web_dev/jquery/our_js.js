// Playing around with jQuery:

$(function() {
  console.log( 'ready!' );
});

var button = $(".buttons");
var buttons2 = $(".buttons2");

buttons2.click(function() {
	$('button:last').hide();
});

var text_field = $("#text");

text_field.mouseover(function() {
	$('button:last').show();
});

$('#button1').click(function() {
	$("p:first").css("color", "blue");
});

$("img").click(function() {
	alert("Thanks for clicking on the Cat!");
	$('h1').css("color", "purple");
	$('h1').css("font-size", "72px");
});








