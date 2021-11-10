Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users, only: [:new, :create]
  root to: 'mybooks#index'
  resources :mybooks do
    member do
      get '/reading', to: 'mybooks#reading'
      patch '/reading', to: 'mybooks#reading_edit'
    end
    collection do
      get 'readed'
      get 'unreaded'
    end
  end
  resources :mybooks, shllow: true do
    resources :records
  end
end
