Rails.application.routes.draw do

  root to: 'static_pages#home'
  get 'whatis', to: 'static_pages#whatis.html'
  get 'signup',  to: 'users#new'
  
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  post 'mentioncreate', to: 'mentions#create'

  resources :users
  resources :news
  resources :mentions, only: [:create, :destroy]
end
