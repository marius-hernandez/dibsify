Rails.application.routes.draw do
  resources :pins
  # devise related
  devise_for :users,
  path: "",
  controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  },
  path_names: {
    sign_up: "signup",
    sign_in: "login"
  }



  root "posts#index"

  # pages
  get "profile", to: "profile#index"
  get "posts", to: "posts#index"

  post "signup", to: "user#create"
  post "login", to: "sessions#create"

  get "logout", to: "sessions#destroy"

  post "create_post", to: "posts#create"
  delete "delete_post/:id", to: "posts#destroy", as: :delete_post
  # helpers
  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest


  # resources
  resources :posts do
    resources :comments
  end
  resources :comments
  resources :profile
end
