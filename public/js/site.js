
$(function () {
  $("input:text:visible:first").focus();
});

$(function () {
            $("tr td").css({
                'text-align':'center'
                });;
            $("td.claves").css({
                'font-size':'10px'
                });;
        });

// ############# //
// detener el avance de un enlace// ############# //
$(function() {
	 $(".stop-link").click(function (e) {
		e.preventDefault();
	 });
});


// Dialog show event handler -

$(function() {
  $('#confirmDelete').on('show.bs.modal', function (e) {
      $message = $(e.relatedTarget).attr('data-message');
      $(this).find('.modal-body p').text($message);
      $title = $(e.relatedTarget).attr('data-title');
      $(this).find('.modal-title').text($title);

      // Pass form reference to modal for submission on yes/ok
      var form = $(e.relatedTarget).closest('form');
      $(this).find('.modal-footer #confirm').data('form', form);
  });

  <!-- Form confirm (yes/ok) handler, submits form -->
  $('#confirmDelete').find('.modal-footer #confirm').on('click', function(){
      $(this).data('form').submit();
  });

});
