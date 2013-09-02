$(document).ready(function(){
	$('.project').click(function() {
		$('#project_title').val($(this).children('.title').text());
		$('#project_code_repository_link').val($(this).children('.code').text());
		$('#project_skill').val($(this).children('.skills').text());
		$('#project_contributors_link').val($(this).children('.contributors').text());
	});
});