class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @snsposts = current_user.snsposts
  end
end
