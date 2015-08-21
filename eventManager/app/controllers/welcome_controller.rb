class WelcomeController < ApplicationController
  def show
    @user = current_user
    @events = Event.all
    @events = @events.future_events(Date.today)
    render 'show'
    
  end
  

end