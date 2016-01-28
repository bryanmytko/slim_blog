Rails.application.routes.draw do
  root to:"home#index"

  resources :posts, only: [:index, :show]
  resources :visuals, only: :index
  resources :about, only: :index

  namespace :admin do
    get '', to: 'admin#index', as: '/'
    post '/login', to: 'admin#login', as: :admin_login_path
    get '/logout', to: 'admin#logout', as: :admin_logout_path
    resources :posts
  end

  get "sitemaps/sitemap.xml.gz", to: "sitemaps#show"
end
