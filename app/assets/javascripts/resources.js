// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var Resource = (function($){
  function _removeLoadingStatus() {
    $(document).css('cursor', 'inherit');
  }

  return {removeLoadingStatus: _removeLoadingStatus}
})($)