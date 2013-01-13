var showAddForm = (function(){
	var _, addForm, addLink;
	return {
		init: function(){
			_ = this;
			addLink = $('#add-link');
			addForm = $('#add-photo');
			_.bindKeys();
		},
		bindKeys: function(){
			addLink.bind('click',_.changeStatus);
		},
		changeStatus: function(e){
			addForm.toggleClass('active');
			e.preventDefault();
		},
		destroy: function(){

		}
	};
	return showAddForm;
})();
var addSummaryPhoto = (function(){
	var _, photo;
	return {
		init: function(){
			_ = this;
			photo = $('.photo-choice');
			form = $('#SummaryAddForm');
			_.bindKeys();
		},
		bindKeys: function(){
			photo.bind('click',_.changeStatus);
		},
		changeStatus: function(e){
			if($(e.currentTarget).hasClass('active')){
				$(e.currentTarget).removeClass('active');
				console.log(form);
				_.updateInputs();
			}else{
				if($('.photo-choice.active').length > 2){
					alert('Too many photos');
				}else{
					$(e.currentTarget).addClass('active');
				}
			}

		},
		updateInputs: function(){
			alert('form');
			form.children('input').remove();
		},
		destroy: function(){

		}
	};
	return showAddForm;
})();
$(function(){
	var linkCheck = document.getElementById('add-link');
	if(!!linkCheck) showAddForm.init();
	var summaryCheck = document.getElementById('add-summary-photos');
	if(!!summaryCheck) addSummaryPhoto.init();
	$(document).ready(function() {
		$(".fancybox").fancybox().bind('beforeShow', function(e){
			e.stopPropagation();
		});
		
	});
});