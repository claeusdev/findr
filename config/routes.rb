Rails.application.routes.draw do

  resource :search, only: [:show]

  resources :users, only: [:show]
  resources :places do
  	resources :reviews
  end

  get 'pages/index'

  get 'pages/about'

  get 'pages/contact'


  devise_for :users, controllers: {:registrations => 'users/registrations', :confirmations => 'users/confirmations'}
  root to: "pages#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
