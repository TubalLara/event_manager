class AttendancesController < ApplicationController
    
    def create#for a user to join an event
        event = Event.find(params[:event_id]) 
        current_user.attend(event)
        respond_to do |format|
          format.html { redirect_to events_url, notice: 'You have joined ' + event.name + ' event successfully' }
        end
    end

    def index
      @user = current_user
      @events = User.find_by(id: @user.id).events.order(updated_at: :asc)
      SELECT users.* FROM users JOIN events ON users.id = events.user_id WHERE user_id = 8;


    end


end
