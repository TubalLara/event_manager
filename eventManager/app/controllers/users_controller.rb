class UsersController < ApplicationController
  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        #WelcomeMailer.welcome_email(@user).deliver_now
        format.html { redirect_to @user, notice: 'User was successfully created.' }

      else
        format.html { render :new }
      end
    end
  end

  private
	  def user_params
	    params.require(:user).permit(
	      :name, :email, :password, :password_confirmation)
	  end

end
