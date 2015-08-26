class WelcomeController < ApplicationController
  def show
    @user = current_user
    @events = Event.all
    @events = @events.future_events(Date.today)
    @characters = @user.characters if @user.characters
    render 'show'    
  end

  def index #this is the home page
    @user = current_user    
    if @user
      @events = @user.events.future_events(Date.today)
      @characters = @user.characters if @user.characters
      render 'show'
    else
      render 'index'
    end
  end
end