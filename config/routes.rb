Rails.application.routes.draw do
  
  get "clients/busca", to: "clients#busca", as: :busca_client

  root to: "dashboard#index"
  
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :clients
  resources :departments

end
