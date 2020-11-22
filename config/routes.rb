Rails.application.routes.draw do
  devise_for :users, controllers: {
                       sessions: "users/sessions",
                     }
  get "welcome/index"

  resources :posts

  root "posts#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
