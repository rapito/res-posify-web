Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: 'home#index'

  resources :stores
  resources :orders
  resources :foods
  resources :tables
  resources :waiters
  resources :categories
  resources :customers
  resources :categories
end
