class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/snsposts/#{comment.snspost.id}"
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to "/snsposts/#{comment.snspost.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, snspost_id: params[:snspost_id])
  end
end
