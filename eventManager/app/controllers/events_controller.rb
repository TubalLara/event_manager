class EventsController < ApplicationController
	@places = Place.all

  # GET /events
  def index
    @events = Event.all
    
    for event in @events
      @places = Place.all
      event.places = @places      
      @place = event.places.find(event.place_id)
      event.places = @place
    end

  end

  # GET /events/1
  def show
    @places = Place.all
    @event = Event.find(params[:id])    
    @event.places = @places
    id = @event.place_id
    @place = @places.find(id)
    @event.places = @place

  end

  # GET /events/new
  def new
    @places = Place.all
    @event = Event.new
    @event.places = @places #so I can get the places for the new event form
    
    

  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
    @places = Place.all
    @event.places = @places #so I can get the places for the edit event form
  end

  # POST /events
  def create
    @event = Event.new(event_params)
    

    respond_to do |format|
      if @event.save
        
        format.html { redirect_to @event, notice: 'Event was successfully created.' }

      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /events/1
  def update
    @event = Event.find(params[:id])
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /events/1
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
    end
  end
  
  private
	  def event_params
	    params.require(:event).permit(
	      :name, :introduction, :place_id, :begin_date, :finish_date, :places)
	  end

	
	
end
