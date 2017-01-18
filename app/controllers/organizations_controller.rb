class OrganizationsController < ApplicationController

  after_action :load_organizations

  def index
    @organizations = Organization.all
    render json: @organizations.to_json
  end

  def create
    @organization = Organization.create(organization_params)
    render json: @organizations.to_json
  end

  def destroy
    organization.find_by_name(params[:id]).destroy
    render json: @organizations.to_json
  end

  private

  def organization_params
    params.require(:organization).permit(:name)
  end

  def load_organizations
    @organizations = Organization.all
  end
end
