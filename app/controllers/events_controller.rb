class EventsController < ApplicationController
  before_action :set_attributes, only: %i[show edit update destroy]

  def index
    @events = Event.where.not(user: current_user)
    @event = Event.new

    if params[:query].present?
      sql_query = <<~SQL
        events.name @@ :query
        OR events.name ILIKE :query
        OR events.description @@ :query
        OR events.description ILIKE :query
        OR events.address @@ :query
        OR events.address ILIKE :query
      SQL
      @events = @events.where(sql_query, query: "%#{params[:query]}%").distinct
    end

    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window_html: render_to_string(partial: "info_window", formats: :html, locals: { event: event }),
        marker_html: render_to_string(partial: "marker", formats: :html)
      }
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: "events/events", locals: { events: @events, markers: @markers }, formats: [:html] }
    end

  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save!
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @host = @event.user
    @event = Event.find(params[:id])
    @attendee = Attendee.where(user: current_user, event: @event)
    @markers = [{
        lat: @event.latitude,
        lng: @event.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { event: @event }),
        marker_html: render_to_string(partial: "marker")
      }]
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @event.update(event_params)
      flash[:success] = "Your event has been updated!"
      redirect_to event_path(@event)
    else
      render action: :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to dashboard_index_path, status: :see_other
  end

  def join
    @event = Event.find(params[:id])
    current_user.attendees.create(event: @event)
    redirect_to event_path(@event), notice: "You have joined the event."
  end

  private

  def event_params
    params.require(:event).permit(:name, :address, :description, :date, :photo)
  end

  def set_attributes
    @event = Event.find(params[:id])
  end
end
