class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.where("sender_id = :user_id OR receiver_id = :user_id", user_id: current_user.id)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
