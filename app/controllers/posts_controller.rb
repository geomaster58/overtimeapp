class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :destroy, :update, :approve]
  before_action :auth, only: [:edit, :update, :approve]

  def index 
    @posts = Post.posts_by(current_user).page(params[:page]).per(10)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to @post, notice: 'Your post was created successfully'
     else
     render :new  
   end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Your post was updated successfully'
    else
      render :edit
    end
  end

  def destroy
    @post.delete
    redirect_to posts_path, notice: "Your post was deleted"
  end

  def approve
    @post.approved!
    redirect_to root_path, notice: "The post has been approved"
  end

  private

  def post_params
    params.require(:post).permit(:date, :rationale, :status, :overtime_request)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def auth
    authorize @post
  end
end
