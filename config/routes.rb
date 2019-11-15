Rails.application.routes.draw do
  get 'campaign_interests/create'
  get 'campaign_interests/destroy'
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  resources :campaigns
  resources :channels
end
