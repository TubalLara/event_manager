class AdminController < ApplicationController
  def show
    @user = current_user
    @organizations = current_user.organizations
    # @events = Event.where("organization_id=(SELECT organization_id FROM user_organizations WHERE user_id = '#{current_user.id}')")
    # @events = SELECT * FROM events JOIN @organizations ON event.organization_id = organization.id
    
    @characters = Character.where(creator_id: current_user.id)
    render 'show'    
  end
end