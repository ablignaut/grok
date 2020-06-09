Rails.application.routes.draw do
  resources :products
  resources :tickets_categories
  resources :categories
  resources :tickets
  root to: 'visitors#index'
end
