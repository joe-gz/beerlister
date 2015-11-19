class CommentsController < ApplicationController
  # set beer and comments to clean code
  before_action :set_vars, only: [:show,:edit,:update]

  def index
    @comments = Comment.all
  end

  def show

  end

  def new
    @comment = Comment.new
    @beer = Beer.find(params[:beer_id])
  end

  def create
    @beer = Beer.find(params[:beer_id])
    # create comment on specific beer_id
    @comment = @beer.comments.create(comment_params)
    @comment.user = current_user
    @comment.save

    redirect_to beer_path(@beer)
  end

  def edit
  end

  def update
    @comment.update(comment_params)

    redirect_to beer_comment_path(@beer,@comment)
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.user == current_user
      @beer = Beer.find(params[:beer_id])
      @comment = Comment.find(params[:id])
      @comment.destroy
      redirect_to beer_path(@beer)
    else
      @beer = Beer.find(params[:beer_id])
      redirect_to beer_path(@beer)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_text)
  end

  def set_vars
    @beer = Beer.find(params[:id])
    @comment = Comment.find(params[:id])
  end

end
