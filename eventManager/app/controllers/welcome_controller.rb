class WelcomeController < ApplicationController
  def show
    @user = current_user
    
    @events = current_user.events.future_events(Date.today) if current_user.events
    @characters = @user.characters if @user.characters
    @post = @user.posts.last if @user.posts
    render 'show'    
  end

  def index #this is the home page
    @user = current_user    
    if @user
      @events = current_user.events.future_events(Date.today) if current_user.events
      @characters = @user.characters if @user.characters
      @post = @user.posts.last if @user.posts
      render 'show'
    else
      @post = Post.last
      render 'index'
    end
  end
end