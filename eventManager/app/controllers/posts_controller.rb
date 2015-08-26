class PostsController < ApplicationController
  # GET /posts
  def index
    @posts = Post.all
  end
  # GET /posts/1
  def show    
    @post = Post.find(params[:id])   
  end
  # GET /posts/new
  def new    
    @post = Post.new    
    @user = current_user
  end
  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])    
  end
  # POST /posts
  def create
    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save        
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
  # PATCH/PUT /posts/1
  def update
    @user = current_user
    @post = Post.find(params[:id])
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
  # DELETE /posts/1
  def destroy
   @post = Post.find(params[:id])
    @opost.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
    end
  end
    
  private
    def post_params
      params.require(:post).permit(
        :title, :content, :user_id, :organization_id, :event_id, :character_id, :place_id)
    end
end