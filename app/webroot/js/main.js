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
			photo = $('.photo-choice').children('.check');
			form = $('#photo-selects');
			submit = $('.submit');
			_.bindKeys();
		},
		bindKeys: function(){
			photo.bind('click',_.changeStatus);
			submit.bind('click',_.checkSelects);
		},
		changeStatus: function(e){
			if($(e.currentTarget).parent().hasClass('active')){
				$(e.currentTarget).parent().removeClass('active');
			}else{
				if($('.photo-choice.active').length > 2){
					alert('Sorry! You can only select 3 photos maximum. Try removing a photo first.');
				}else{
					$(e.currentTarget).parent().addClass('active');
				}
			}
			_.updateInputs();
		},
		updateInputs: function(){
			form.children('input').remove();
			$('.photo-choice.active').each(function(i,ele){
				form.append($('<input type="hidden" name="data[Summary][photo'+(i+1)+']" id="SummaryPhoto'+(i+1)+'" value="'+$(ele).data('id')+'">'));
			});
		},
		checkSelects: function(e){
			if(form.children('input').length < 3){
				alert('You have not selected 3 photos. First pick 3 photos then try again.');
				e.preventDefault();
			}
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
		$(".fancybox").fancybox({
			padding: 0,
		    helpers : {
		        title: {
		            type: 'outside'
		        }
		    }
		});
	});
});