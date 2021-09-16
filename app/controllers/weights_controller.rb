class WeightsController < ApplicationController

  def new
    @weight = Weight.new
  end

  def create
    Weight.create(weight_params)
    redirect_to root_path
  end

  private
  def weight_params
    params.require(:weight).permit(:target, :current, :intake).merge(user_id: current_user.id)
  end
end
