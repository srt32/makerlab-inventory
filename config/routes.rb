Rails.application.routes.draw do

  resources :inventories do
    # setting up search
    collection do
      get :search
    end
  end

  resources :tools do
    # nested route
    resources :checkouts
    
    # setting up search
    collection do
      get :search
    end
  end

  resources :checkouts, only: [:index, :destroy]

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'tools#index'
end