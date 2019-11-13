Rails.application.routes.draw do
  devise_for :users
  root "grams#index"# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :grams do
    resources :comments, only: :create
  end
end
