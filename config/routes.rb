Rails.application.routes.draw do
  devise_for :users
  resources :foods, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
