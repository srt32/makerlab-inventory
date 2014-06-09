Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :inventories
  resources :tools

  root to: 'tools#index'
end
