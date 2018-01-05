class StaticPagesController < ApplicationController
  
  def root
    @chatroom = Chatroom.all.first
    @message = Message.new()
    render :root
  end
  
end