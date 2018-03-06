Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  resources :sessions, only: [:create]
  get '/login', to: 'sessions#new'
  delete '/logout', to: 'sessions#destroy'

  namespace :manage do
    get '/', to: 'home#index'
    resources :sessions, only: [:create]
    get '/login', to: 'sessions#new'
    delete '/logout', to: 'sessions#destroy'
  end

end
