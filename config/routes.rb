Rails.application.routes.draw do
  root to: 'spa#index'
  resources :spa, only: :index

  namespace :api do
    resources :goods, only: [:index, :show]
    resources :companies, only: [:show]
    get 'templates/:file_name', to: "templates#render_template"
  end
end
