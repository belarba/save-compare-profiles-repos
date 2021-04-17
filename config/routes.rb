Rails.application.routes.draw do
  root "users#index"

  resources :users, only: [:index, :create, :show] do
  end

  resources :repos, only: [:create, :show] do
  end

  resources :fetch_users, only: [:index, :new] do
  end

  resources :fetch_repos, only: [:index, :new] do
  end

  resources :compare_users, only: [:index] do
  end

  resources :compare_repos, only: [:index] do
  end
end
