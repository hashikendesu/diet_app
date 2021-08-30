class SnspostsController < ApplicationController

  def index
    @snsposts = Snspost.all
  end

  def new
    @snspost = Snspost.new
  end

end
