class SnspostsController < ApplicationController
  before_action :set_snspost, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @snsposts = Snspost.includes(:user).order("created_at DESC")
  end

  def new
    @snspost = Snspost.new
  end

  def create
    Snspost.create(snspost_params)
  end

  def destroy
    snspost = Snspost.find(params[:id])
    snspost.destroy
  end

  def edit
  end

  def update
    snspost = Snspost.find(params[:id])
    snspost.update(snspost_params)
  end

  def show
  end

  private
  def snspost_params
    params.require(:snspost).permit(:image, :text).merge(user_id: current_user.id)
  end

  def set_snspost
    @snspost = Snspost.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
