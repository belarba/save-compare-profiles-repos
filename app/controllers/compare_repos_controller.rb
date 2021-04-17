class CompareReposController < ApplicationController
  def index
    repos = params[:repos_ids]
    @repo1 = Repo.find(repos[0].to_i)
    @repo2 = Repo.find(repos[1].to_i)
  end
end
