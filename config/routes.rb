Rails.application.routes.draw do
  resources :spa, only: :index

  namespace :api do
    resources :goods
  end
end
