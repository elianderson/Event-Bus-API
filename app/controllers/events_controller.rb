class EventsController < ApplicationController

  def create
    organization = Organization.find_by_name(params[:organization_id])

    Event.create(event_params)

    render json: organization.events.to_json

  end

  private

  def events_params
    params.require(:event).permit(:message, :hostname, :timestamp)
  end
end
