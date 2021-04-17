class ReposController < ApplicationController
  def create
    @repo = Repo.create(params[:repo_data].to_enum.to_h)
    @repo.save
    return RedirectToAction("index", "user");
  end
end
