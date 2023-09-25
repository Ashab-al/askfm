Rails.application.routes.draw do
  root 'users#index'

  resources :users, except: [:delete]
  resources :sessions, only: [:new, :create, :destroy]
  resources :questions
  resources :posts

  get 'sign_up' => 'users#new'
  get 'log_out' => 'sessions#destroy'
  get 'log_in'  => 'sessions#new'
  get 'posts'   => 'posts#index'
end
