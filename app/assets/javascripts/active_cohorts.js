// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {

  if ($('body.active_cohorts.index').length === 0) {
    return;
  }

  $('.deleteActiveCohort').click(function(e) {
    e.preventDefault();
    let deletionUrl = e.target.getAttribute('href')

    $.ajax({
      method: 'DELETE',
      url: deletionUrl,
      success: function(data) {
        $(e.target).parents('.main-Active_Cohorts').remove();
      }
    })
  })



})