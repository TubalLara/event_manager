class AssignedCharactersController < ApplicationController

  def create#for a character to join an event
    event = Event.find(params[:event_id]) 
    character = Character.find(params[:character_id])
    character.is_part_of(event)
    respond_to do |format|
      format.html { redirect_to characters_url, notice: 'You have joined this character to ' + event.name + ' event successfully' }
    end
  end
end