class EventAdminPanelsController < ApplicationController

  def index
    @user = current_user
    @event = Event.all.find(params[:event_id])
    @characters = Character.all.where(organization_id: "@event.organization_id")
    @posts = @event.posts
    @post = @posts.last
    @organization = Organization.all.find(@event.organization_id) if @event.organization_id
    @organizators = @organization.users if @organization
    @users = @event.users
    
    render 'index'
    
  end

end