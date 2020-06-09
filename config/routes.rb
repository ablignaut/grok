Rails.application.routes.draw do
  resources :products do
    resources :tickets_categories
    resources :categories
    resources :tickets
  end
  root to: 'visitors#index'
end
