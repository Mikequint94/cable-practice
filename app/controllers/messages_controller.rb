class MessagesController < ApplicationController
  
  def index
    @chatroom = Chatroom.all.first
    @message = Message.new()
    render :index
  end
  
  def create
    message = Message.new(message_params)
    # message.user_id = message.user_id.to_i
    message.chatroom = Chatroom.all.first
    if message.save
      ActionCable.server.broadcast 'messages',
        message: message.body,
        user: message.user.username
      head :ok
    else
      
      render message.errors.full_messages
    end
  end
  
  private
  
  def message_params
    params.require(:message).permit(:body, :chatroom_id, :user_id)
  end
end
