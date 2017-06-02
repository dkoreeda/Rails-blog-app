class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to action: "index"
    else
      render :new
    end
  end

  def show
    # @post = Post.find(params[:id])
    @post_comments = @post.comments
  end

  def edit

  end

  def update
    if @post.update(post_params)
      redirect_to action: "index"
    else
      render :edit
    end
  end

  def destroy
    if @post.destroy
      redirect_to action: "index"
    else
      render :index
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :description)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
