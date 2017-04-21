Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'user/sessions',
        registrations: 'user/registrations'
      }


  resources :chatrooms do
  	resource :chatroom_users
    resource :messages
  end

  root to: 'chatrooms#index'

  mount ActionCable.server => '/cable'
end