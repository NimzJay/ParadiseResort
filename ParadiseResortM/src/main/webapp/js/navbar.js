$(document).ready(function() {
	$('.navbar').addClass('affix2');
	// Transition effect for navbar 
	$(window).scroll(function() {
		// checks if window is scrolled more than 500px, adds/removes solid class
		if ($(this).scrollTop() > 500) {
			$('.navbar').removeClass('affix2');
			$('.navbar').addClass('affix');
		} else {
			$('.navbar').removeClass('affix');
			$('.navbar').addClass('affix2'); 
		}
	});
});
