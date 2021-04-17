class FetchReposController < ApplicationController
  def index
  end

  def new
    base_url = Repo.api_path
    get_url = base_url + params[:user_name] + '/repos'
		response = RestClient.get(get_url){|response, request, result| response }
    @code = response.code
		@repos = JSON.parse(response)
  end
end
