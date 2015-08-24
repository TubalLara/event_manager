class OrganizationsController < ApplicationController


  # GET /organizations
  def index
    @organizations = Organization.all
       
    # for organization in @organizations
    #   @events = Event.all
    #   organization.events = @events.where("organization.id = organization_id")      
     
    # end

  end

  # GET /organizations/1
  def show
    
    @organization = Organization.find(params[:id])    
    

  end

  # GET /organizations/new
  def new
    
    @organization = Organization.new
    
    @user = current_user
  end

  # GET /organizations/1/edit
  def edit
    @organization = Organization.find(params[:id]) 
    
  end

  # POST /organizations
  def create
    @organization = Organization.new(organization_params)
    

    respond_to do |format|
      if @organization.save
        
        format.html { redirect_to @organization, notice: 'Organization was successfully created.' }

      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /organizations/1
  def update
    @user = current_user
    @organization = Organization.find(params[:id])
    respond_to do |format|
      if @organization.update(organization_params)
        format.html { redirect_to @organization, notice: 'Organization was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /organizations/1
  def destroy
   @organization = Organization.find(params[:id])
    @organization.destroy
    respond_to do |format|
      format.html { redirect_to organizations_url, notice: 'Organization was successfully destroyed.' }
    end
  end

    
  private
    def organization_params
      params.require(:organization).permit(
        :name, :description, :url)
    end

  

end