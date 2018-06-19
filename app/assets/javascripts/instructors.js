// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {


  if ($('body.instructors.index').length === 0) {
    return;
  }

  $('.instructorDelete').click(function(e) {
    e.preventDefault();
    let deletionUrl = e.target.getAttribute('href')
    console.log(deletionUrl);
    $.ajax({
      method: 'DELETE',
      url: deletionUrl,
      success: function(data) {
        console.log(data)
        $(e.target).parents('.main-Instructors').remove();
      }
    })
  })


})