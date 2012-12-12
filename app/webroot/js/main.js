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
$(function(){
	var linkCheck = document.getElementById('add-link');
	if(!!linkCheck) showAddForm.init();
});