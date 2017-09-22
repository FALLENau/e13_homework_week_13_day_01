Rails.application.routes.draw do
  #notfilx ver
  devise_for :users, :controllers => {sessions: 'sessions', registrations: 'registrations'}
  # scope path: "api" do
  #   resources :campaigns, defaults: {format: :json}
  # end
  resources :user
  # devise_for :users
  # resources :sessions, only: [:create, :destroy]
  # resources :user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
