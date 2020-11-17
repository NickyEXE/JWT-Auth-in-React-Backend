Rails.application.routes.draw do
  resources :channels, only: [:index, :show] do
    resources :messages, only: [:create]
  end
  resources :messages, only: [:index, :create] do
    resources :likes, only: [:create]
    # POST "messages/:message_id/likes"
  end
  resources :users, only: [:create]

  post '/login', to: "sessions#login"
  post '/autologin', to: "sessions#auto_login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
