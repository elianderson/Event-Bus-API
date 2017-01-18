class OrganizationsController < ApplicationController

  def index
    @organizations = Organization.all

    render json: @organizations.to_json
  end
end
