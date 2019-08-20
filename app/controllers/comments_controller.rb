class CommentsController < ApplicationController

  def index
    @comments = Comment.all 
    render json: @comments
  end

  def create
    @comment = Comment.new(params)
    @rating.save
    render json: @comment
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.delete
    render json: { message: "Successfully deleted"}
  end
end
