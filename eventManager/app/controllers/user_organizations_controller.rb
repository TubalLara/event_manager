class UserOrganizationsController < ApplicationController

  def create#for a user to join an organization
        organization = Organization.find(params[:organization_id]) 
        current_user.works_at(organization)
        respond_to do |format|
          format.html { redirect_to organizations_url, notice: 'You have joined ' + organization.name + ' event successfully' }
        end
  end
end