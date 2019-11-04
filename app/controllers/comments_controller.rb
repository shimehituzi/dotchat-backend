class CommentsController < ApplicationController
  def index
    if params[:room_id]
      room = Room.find(params[:room_id])
      comments = room.comments
    else
      comments = Comment.all
    end
    render json: comments
  end

  def create
    comment = Comment.new(comment_params)
    comment.room_id = params[:room_id]
    comment.save
    render json: comment
  end

  def destroy
    comment = Comment.find(params[:id])
    if comment.destroy
      head :no_content, status: :ok
    else
      render json: comment.errors, status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:room_id, :text)
  end
end
