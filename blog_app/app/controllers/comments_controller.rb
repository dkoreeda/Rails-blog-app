class CommentsController < ApplicationController

  before_action :set_comment, only: [:show, :edit, :update]

  def index
    @post_id = params[:id]
    @post = Post.find(@post_id)
    # @post_comments = Comment.where(post_id: @post_id)
    @post_comments = @post.comments
  end

  def new
    @post_id = params[:id]
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to comments_path(@comment.post)
    else
      render :new
    end
  end

  def show
    # @comment = Comment.find(params[:comment_id])
  end

  def edit
    # @comment = Comment.find(params[:comment_id])
    # @post_id = params[:id]
  end

  def update
    # @comment = Comment.find(params[:comment_id])
    if @comment.update(comment_params)
      redirect_to comments_path @comment.post
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:comment_id])
    if @comment.destroy
      redirect_to comments_path @comment.post
    else
      render :index
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:description, :post_id)
  end

  def set_comment
    @comment = Comment.find(params[:comment_id])
  end

end
