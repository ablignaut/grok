Rails.application.routes.draw do
  resources :tickets_categories
  resources :categories
  resources :tickets
  root to: 'visitors#index'
end
