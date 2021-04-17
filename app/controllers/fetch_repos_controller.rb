class FetchReposController < ApplicationController
  def index
  end

  def new
    base_url = 'https://api.github.com/users/'
		response = RestClient.get base_url + params[:user_name] + '/repos'
		@repos = JSON.parse(response)
  end
end