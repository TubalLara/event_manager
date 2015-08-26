class AdminController < ApplicationController
  def show
    @user = current_user
    @organizations = current_user.organizations
    @events = current_user.events
    # @events = SELECT * FROM events JOIN @organizations ON event.organization_id = organization.id
    
    @characters = Character.where(creator_id: current_user.id)
    render 'show'    
  end
end