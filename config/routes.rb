Rails.application.routes.draw do
  root 'users#index'

  resources :questions
  resources :users, except: [:delete]
end
