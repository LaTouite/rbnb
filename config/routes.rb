Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :activities do
    resources :bookings, only: [:create]
  end

  get 'my_activities', to: 'pages#my_activities'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
