class CommentsController < ApplicationController

  def index
    @comments = Comment.all 
    render json: @comments
  end

  def create
    @comment = Comment.create(content: params[:content], user_id:params[:user_id], article_id:params[:article_id])
    render json: @comment
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.delete
    render json: { message: "Successfully deleted"}
  end
end
