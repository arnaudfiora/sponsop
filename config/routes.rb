Rails.application.routes.draw do

  root to: 'pages#home'
  devise_for :users
  get 'dashboard', to: 'pages#dashboard', as: :dashboard

  # CAMPAIGNS & CHANNELS
  resources :campaigns do
    resources :campaign_interests
  end
  resources :channels

  # CHAT
  mount ActionCable.server => "/cable"
  resources :chat_rooms, only:[:new, :create, :show]
  resources :messengers, only:[:index,:show]
  post ('chat_rooms/:chat_room_id/messages'), to: 'messages#create', as: :chat_room_messages
  get 'messages/create'  
  resources :contracts, only:[:index,:show,:new, :create,:edit,:update]
  
end
