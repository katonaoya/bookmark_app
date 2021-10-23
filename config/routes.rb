Rails.application.routes.draw do
  root to: 'mybooks#index'
  resources :mybooks do
    member do
      get '/reading', to: 'mybooks#reading'
      patch '/reading', to: 'mybooks#reading_edit'
    end
  end
end
