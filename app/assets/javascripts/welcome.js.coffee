# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
	if $('body').id is 'welcome_index'
		$('#info_link').click(->
			alert('Sorry, the info page is under construction.\nReach me via mail: pmq2001 _a_t_ gmail.com')
		)
