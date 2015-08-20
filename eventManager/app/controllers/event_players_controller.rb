class EventPlayersController < ApplicationController
    def create#for a user to join an event
        @event = Event.find(params[:event_id]) 
        @event.users << current_user
        respond_to do |format|
          format.html { redirect_to events_url, notice: 'You have joined ' + @event.name + ' event successfully' }
        end
    end
end
