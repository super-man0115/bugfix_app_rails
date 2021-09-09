Rails.application.routes.draw do
  get 'user_sessions/new'
  get 'user_sessions/create'
  get 'user_sessions/destroy'
  get 'users/new'
  get 'users/create'
  get 'top_pages/index'
  get 'top_pages/help'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'user_sessions#new'
  post   '/login',   to: 'user_sessions#create'
  resources :users
end
