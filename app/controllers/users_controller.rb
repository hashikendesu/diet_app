class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]
  before_action :correct_user, only: [:edit, :update]

  def show
    @user = User.find(params[:id])
    user = User.find(params[:id])
    @snsposts = user.snsposts
  end

  def edit
    redirect_to " /users/#{current_user.id}"
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "編集が完了しました"
      redirect_to user_path(@user.id)
    else
      flash.now[:alert] = "編集に失敗しました"
      render :edit
    end
  end

  private

  def user_params
    params.fetch(:user, {}).permit(:nickname, :text, :email, :image)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def correct_user
    unless user_signed_in? && current_user.id == @user.id
      redirect_to root_path
    end
  end

end
