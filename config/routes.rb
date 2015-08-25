Rails.application.routes.draw do
  root 'root#root'
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]

  get '/guest', to: 'sessions#guest'

  namespace :api, defaults: { format: :json } do
    resources :restaurants, except: [:new, :edit]
    resources :lists, except: [:new, :edit]
    resources :listings, except: [:new, :edit]
    resources :dinings, except: [:new, :edit]

    post '/restaurants/:id/favorite', to: 'restaurants#favorite'
    post '/restaurants/:id/visited', to: 'restaurants#visited'
  end
end
