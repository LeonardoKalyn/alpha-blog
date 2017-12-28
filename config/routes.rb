Rails.application.routes.draw do
  root 'pages#home'
  
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'about', to: 'pages#about'
  
  resources :articles
end
