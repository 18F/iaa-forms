$(document).ready(function(){

  $('.branch-text').hide();

  $('.is-branch').hide();

  // Assign handlers to the trunks for each branch
  // $('.is-branch').each(function(){
  //   branch = this
  //   trunk = this.id -- "branch-"
  //   if trunk.hasClass('field-radio'){
  //     trunk.change(function(){
  //       if (this.selected) {
  //         branch.show();
  //       } else {
  //         branch.hide();
  //       }
  //     });
  //   }
  // });

  $.bigfoot();
  $('body').addClass('bigfoot');

});