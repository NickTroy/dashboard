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
  $('.send_chat_message').on('click', function(){
    var chat_id = $(this).parents('.start_chat').data('chat_id');
    var message_text = $(this).parents('.new_message_form').find('.message_body').val();
    $.ajax({
      url: "/messages",
      method: 'POST',
      dataType: 'json',
      data: {
        chat_id: chat_id,
        message_text: message_text
      }

    })
  })
});



