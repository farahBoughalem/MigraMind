class DashboardController < ApplicationController
  def index
    @posts = current_user.posts.order(created_at: :desc)
    # @joined_events = Event.joins(:attendees).where(attendees: { user: current_user })
    @joined_events = current_user.joined_events

    @my_events = current_user.events
  end

  def show
    @user = User.find(params[:id])
  end

  def chat
    @receiver = User.find(params[:id])
    past_chat = Chatroom.find_by(sender: current_user, receiver: @receiver)
    past_reverse_chat = Chatroom.find_by(receiver: current_user, sender: @receiver)
    if past_chat.present? && !past_reverse_chat.present?
      redirect_to chatroom_path(past_chat)
    elsif !past_chat.present? && past_reverse_chat.present?
      redirect_to chatroom_path(past_reverse_chat)
    else
      chatroom = Chatroom.create(sender: current_user, receiver: @receiver)
      redirect_to chatroom_path(chatroom)
    end
  end
end
