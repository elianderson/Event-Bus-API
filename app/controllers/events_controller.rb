class EventsController < ApplicationController

  def index_all
    @events = Event.all

    render json: @events.to_json
  end

  def index
    organization = Organization.find_by_name(params[:organization_id])
    @events = organization.events.limit(params[:limit])

    render json: @events.to_json
  end

  def create
    organization = Organization.find_by_name(params[:organization_id])

    Event.create(event_params.merge({organization_id: organization.id}))

    render json: organization.events.to_json

  end

  private

  def event_params
    params.require(:event).permit(:message, :hostname, :timestamp)
  end
end
