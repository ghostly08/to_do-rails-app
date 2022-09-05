Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update] do
    resources :tasks
  end
  root to: "users#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
