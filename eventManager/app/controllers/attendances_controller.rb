class AttendancesController < ApplicationController
    
    def create#for a user to join an event
        event = Event.find(params[:event_id]) 
        current_user.attend(event)
        respond_to do |format|
          format.html { redirect_to events_url, notice: 'You have joined ' + event.name + ' event successfully' }
        end
    end

    # def index
    #   @user = current_user
    #   @events = @user.events.future_events(Date.today)
      
    # end


end
