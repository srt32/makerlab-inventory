Rails.application.routes.draw do

  resources :inventories
  resources :tools do
    resources :checkouts
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'tools#index'
end
