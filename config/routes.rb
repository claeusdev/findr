Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:show]
  resources :places do
  	resources :reviews
  end

  get 'pages/index'

  get 'pages/about'

  get 'pages/contact'


  root to: "pages#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
