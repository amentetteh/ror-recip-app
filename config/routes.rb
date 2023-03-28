Rails.application.routes.draw do
  resources :foods, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
