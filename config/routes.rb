Rails.application.routes.draw do
  
  get "clients/search", to: "clients#search", as: :search_client

  root to: "dashboard#index"
  
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :clients
  resources :departments

end
