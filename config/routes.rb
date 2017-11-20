Rails.application.routes.draw do

  resource :search, only: [:show]

  resources :places do
  	resources :reviews
  end

  get 'pages/index'

  get 'pages/about'

  get 'pages/contact'


  devise_for :users, controllers: {:registrations => 'users/registrations', :confirmations => 'users/confirmations'}
  resources :users, only: [:show]

  root to: "pages#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
