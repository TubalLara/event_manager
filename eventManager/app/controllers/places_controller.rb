class PlacesController < ApplicationController
	# GET /places
  def index
    @places = Place.all
  end

  # GET /places/1
  def show
    @place = Place.find(params[:id])
  end

  # GET /places/new
  def new
    @place = Place.new
  end

  # GET /places/1/edit
  def edit
    @place = Place.find(params[:id])
  end

  # POST /places
  def create
    @place = Place.new(place_params)

    respond_to do |format|
      if @place.save
        
        format.html { redirect_to @place, notice: 'Place was successfully created.' }

      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /places/1
  def update
    @place = Place.find(params[:id])
    respond_to do |format|
      if @place.update(place_params)
        format.html { redirect_to @place, notice: 'Place was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /places/1
  def destroy
    @place = Place.find(params[:id])
    @place.destroy
    respond_to do |format|
      format.html { redirect_to places_url, notice: 'Place was successfully destroyed.' }
    end
  end
  
  private
	  def place_params
	    params.require(:place).permit(
	      :name, :direction, :url, :postal_code)
	  end

	
end
