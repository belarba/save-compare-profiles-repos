class CompareUsersController < ApplicationController
  def index
    users = params[:users_ids]
    @user1 = User.find(users[0].to_i)
    @user2 = User.find(users[1].to_i)
  end
end
