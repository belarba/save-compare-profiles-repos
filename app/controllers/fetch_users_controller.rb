class FetchUsersController < ApplicationController
  def index
  end

  def new
    base_url = User.api_path
    get_url = base_url + params[:user_name]
		response = RestClient.get(get_url){|response, request, result| response }
    @code = response.code
		@repos = JSON.parse(response)
  end
end
