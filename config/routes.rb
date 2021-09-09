Rails.application.routes.draw do
  get 'top_pages/index'
  get 'top_pages/help'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'user_sessions#new'
  post   '/login',   to: 'user_sessions#create'
  delete '/logout',  to: 'user_sessions#destroy'
  resources :users
end
