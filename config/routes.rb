Rails.application.routes.draw do
  get 'messages/create'
  # get 'chat_rooms/show'
  get 'campaign_interests/create'
  get 'campaign_interests/destroy'

  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  resources :campaigns
  resources :channels
  # resources :chat_room, only:[:show, :create]
  resources :chat_rooms, only:[:new,:create,:show]
  post ('chat_rooms/:chat_room_id/messages'), to: 'messages#create', as: :chat_room_messages

  mount ActionCable.server => "/cable"
end
