Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  get 'cocktails' , to: 'cocktails#index', as: :cocktails
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:index, :new, :create]
  end
  resources :doses, only: [:destroy]
end
