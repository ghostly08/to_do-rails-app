Rails.application.routes.draw do
  root to: "pages#home"

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :tasks do
    get "tasks/:id", to: "tasks#show", as: :task
  end
end
