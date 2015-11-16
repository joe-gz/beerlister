class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
    @beer = Beer.find(params[:beer_id])
  end

  def new
    @comment = Comment.new
    @beer = Beer.find(params[:beer_id])
  end

  def create
    @beer = Beer.find(params[:beer_id])
    @comment = @beer.comments.create(comment_params)
    @comment.user = current_user
    @comment.save

    redirect_to beer_path(@beer)
  end

  def edit
  @comment = Comment.find(params[:id])
  @beer = Beer.find(params[:beer_id])
end

def update
  @beer = Beer.find(params[:beer_id])
  @comment = Comment.find(params[:id])
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

end
