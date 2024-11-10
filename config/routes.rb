Rails.application.routes.draw do
  get "users/new"
  # if Rails.env.development?
  #   mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  # end
  # post "/graphql", to: "graphql#execute"
  root "home#index"

  # pages
  get "profile", to: "profile#index"
  get "posts", to: "posts#index"

  get "signup", to: "users#new"
  post "signup", to: "user#create"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"

  get "logout", to: "sessions#destroy"

  post "create_post", to: "home#create"
  delete "delete_post/:id", to: "home#destroy", as: :delete_post

  # helpers
  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # resources
  resources :posts
  resources :home
  resources :users, only: [ :new, :create ]
  resources :profile
end
