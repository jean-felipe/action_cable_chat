Rails.application.routes.draw do
  devise_for :users

  resources :chatrooms do
  	resource :chatroom_users
    resource :messages
  end

  root to: 'chatrooms#index'

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
