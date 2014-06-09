Rails.application.routes.draw do

  resources :inventories
  resources :tools

  root to: 'tools#index'
end
