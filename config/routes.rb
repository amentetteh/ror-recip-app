Rails.application.routes.draw do
  resources :foods, only: [:index, :show, :new, :create, :update, :destroy]
  resources :recipes, only: [:index, :show, :new, :create, :update, :destroy], path: 'public_recipes' do
    put 'public', on: :member, to: 'recipes#public_allocation'
  end
end
