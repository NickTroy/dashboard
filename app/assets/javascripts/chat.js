$(document).on('page:change', function(){
  $('.start_chat').on('click', function(){
    $(this).find('.chat-messages').toggle();//.show();
    $('.chat-search').toggle();//.hide();
    $('.avatar_and_name').toggle();//.hide();
  });
  $('.chat-back').on('click', function(){
    //alert('back')
    //$('.chat-messages').hide();
    //$('.chat-search').show();
    //$('.avatar_and_name').show();
  })
});



