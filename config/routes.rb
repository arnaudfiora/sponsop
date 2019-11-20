Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  get 'dashboard', to: 'pages#dashboard', as: :dashboard

  # get 'chat_rooms/show'
  # get 'campaign_interests/create'
  # get 'campaign_interests/destroy'

  # CAMPAIGNS & CHANNELS
  resources :campaigns do
    resources :campaign_interests
  end
  # resources :campaign_interests, only: [:destroy]

  resources :channels

  # CHAT
  resources :chat_rooms, only:[:new, :create, :show]
  post ('chat_rooms/:chat_room_id/messages'), to: 'messages#create', as: :chat_room_messages
  get 'messengers/index'
  get 'messengers/show'
  get 'messages/create'
  mount ActionCable.server => "/cable"

  resources :messengers, only: [:index, :show]

end
