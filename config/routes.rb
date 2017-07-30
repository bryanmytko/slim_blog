Rails.application.routes.draw do
  root to:"home#index"

  resources :posts, only: [:index, :show]
  get "pages/:page", to: "pages#show"

  namespace :admin do
    get "", to: "admin#index", as: "/"
    post "/login", to: "admin#login", as: :login
    get "/logout", to: "admin#logout", as: :logout
    resources :posts
  end

  get "sitemaps/sitemap.xml.gz", to: "sitemaps#show"
end
