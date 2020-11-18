Rails.application.routes.draw do
  get 'sessions/login'
  resources :channels, only: [:index, :show] do
    resources :messages, only: [:create]
  end
  resources :messages, only: [:index, :create] do
    resources :likes, only: [:create]
    # POST "messages/:message_id/likes"
  end

  resources :users, only: [:create]

  post "/login", to: "sessions#login"
  post "/autologin", to: "sessions#autologin"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
