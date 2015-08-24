class CharactersController < ApplicationController


  # GET /characters
  def index
    @characters = Character.all
       
    
  end

  # GET /characters/1
  def show
    
    @character = Character.find(params[:id])
    @user = User.all.find(@character.user_id)
    @organization = Organization.all.find(@character.organization_id)    

  end

  # GET /characters/new
  def new
    
    @character = Character.new
    @user = current_user
    @organizations = @user.organizations
    
    
  end

  # GET /characters/1/edit
  def edit
    @character = Character.find(params[:id])
  end

  # POST /characters
  def create
    @character = Character.new(character_params)
    

    respond_to do |format|
      if @character.save
        
        format.html { redirect_to @character, notice: 'Character was successfully created.' }

      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /characters/1
  def update
    @user = current_user
    @character = Character.find(params[:id])
    respond_to do |format|
      if @character.update(character_params)
        format.html { redirect_to @character, notice: 'Character was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /characters/1
  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    respond_to do |format|
      format.html { redirect_to characters_url, notice: 'Character was successfully destroyed.' }
    end
  end

    
  private
    def character_params
      params.require(:character).permit(
        :name, :introduction, :user_id, :organization_id)
    end


end