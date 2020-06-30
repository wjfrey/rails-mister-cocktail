Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:create, :index, :show, :new] do
    resources :doses, only: [:create, :new, :destroy]
  end
end
