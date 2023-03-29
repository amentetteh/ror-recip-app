Rails.application.routes.draw do
  resources :foods, only: [:index, :show, :new, :create, :update, :destroy]
  resources :recipe_foods, path: 'public_foods', only: [:index, :show, :new, :create, :update, :destroy]
end
