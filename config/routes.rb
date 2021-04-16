Rails.application.routes.draw do
  root "users#index"

  resources :users, only: [:index] do
  end

  resources :fetch_users, only: [:index, :show] do
  end

end
