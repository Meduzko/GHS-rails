Rails.application.routes.draw do
  get 'auctioneers/index'
  resources :reports
  resources :meetings
  resources :documents
  resources :auctioneers
  resources :homepage
  devise_for :users, controllers: { sessions: "users/sessions" }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'homepage#index'


  #get 'auctioneer' => 'auctioneer#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
