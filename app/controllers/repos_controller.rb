class ReposController < ApplicationController
  def create
    user_info = params[:repo_data]['owner']

    user = User.find(user_info['id'].to_i)

    user = User.create(user_info.to_enum.to_h) if user.blank?

    repo_info = params[:repo_data].to_enum.to_h

    repo_info['license'].present? ? license_name = repo_info['license']['name'] : nil

    repo_info.delete('license')
    repo_info.delete('owner')

    repo_info.merge!(user: user)
    repo_info.merge!(license_name: license_name)

    @repo = Repo.create(repo_info)
    @repo.save
    redirect_to controller: :users, action: :index
  end
end
