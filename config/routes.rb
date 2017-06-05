Rails.application.routes.draw do
  devise_for :users
  resources :videos, only: [:new, :index, :destroy]
  root 'videos#index'
  namespace :api do 
  	resources :video_callbacks, only: [:create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
