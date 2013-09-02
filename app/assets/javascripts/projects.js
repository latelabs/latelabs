$(document).ready(function(){
	$('.project').click(function() {
		$('#project_title').val($(this).children('.title').text());
		$('#project_code_repository_link').val($(this).children('.code').text());
	});
});