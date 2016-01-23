Rails.application.routes.draw do
  root to:"home#index"

  resources :posts
  resources :visuals, only: :index
  resources :about, only: :index

  scope module: :admin do
    scope :admin do
      get '', to: 'admin#index', as: '/'
      post '/login', to: 'admin#login', as: :admin_login_path
      resources :posts
    end
  end

  get "sitemaps/sitemap.xml.gz", to: "sitemaps#show"
end
