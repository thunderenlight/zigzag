Rails.application.routes.draw do
  devise_for :users
  resources :videos, only: [:new, :index, :destroy]
  root 'videos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
