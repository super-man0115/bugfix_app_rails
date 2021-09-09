Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'top_pages/index'
  get 'top_pages/help'
  resources :users
end
