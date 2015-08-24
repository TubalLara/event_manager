class EventAdminPanelsController < ApplicationController

  def index
    @user = current_user
    @event = Event.all.find(params[:event_id])
    @characters = Character.where(organization_id: @event.organization_id)
    @posts = Post.where(event_id: @event.id)
    @post = @posts.last
    @organization = Organization.all.find(@event.organization_id) if @event.organization_id
    @organizators = @organization.users if @organization
    @users = @event.users
    
    render 'index'
    
  end

end