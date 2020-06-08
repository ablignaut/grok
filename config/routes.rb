Rails.application.routes.draw do
  resources :categories
  resources :tickets
  root to: 'visitors#index'
end
