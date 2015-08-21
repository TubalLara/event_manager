class WelcomeController < ApplicationController
  def show
    @user = current_user
    @events = Event.all
    @events = @events.future_events(Date.today)
    render 'show'
    
  end

  def index #this is the home page
    @user = current_user
    @events = Event.all
    @events = @events.future_events(Date.today)
    if @user
      render 'show'
    else
      render 'index'
    end
  end


end