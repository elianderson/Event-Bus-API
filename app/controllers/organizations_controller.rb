class OrganizationsController < ApplicationController

  def index
    @organizations = Organization.all

    render json: @organizations.to_json
  end

  def create
    @organization = Organization.create(organization_params)
    @organizations = Organization.all

    render json: @organizations.to_json
  end

  private

  def organization_params
    params.require(:organization).permit(:name)
  end
end
