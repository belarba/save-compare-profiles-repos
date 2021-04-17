class UsersController < ApplicationController
  def index
    @users = User.all
    @repos = Repo.all
  end

  def create
    @user = User.create(params[:user_data].to_enum.to_h)
    @user.save
    redirect_to action: "index"
  end

  def show
    @user = User.find_by_id(params[:id])
  end
end
