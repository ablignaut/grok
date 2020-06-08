Rails.application.routes.draw do
  resources :tickets
  root to: 'visitors#index'
end
