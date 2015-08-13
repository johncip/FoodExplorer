Rails.application.routes.draw do
  root 'root#root'
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]

  namespace :api, defaults: {format: :json} do
    resources :restaurants, except: [:new, :edit]
    resources :lists, except: [:new, :edit]
    resources :listings, except: [:new, :edit]
  end
end
