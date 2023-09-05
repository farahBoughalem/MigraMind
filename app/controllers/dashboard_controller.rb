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
end
