class MessagesController < ApplicationController
  def create
    @message_text = params[:message_text]
    @chat = Chat.find(params[:chat_id])
  end
end
