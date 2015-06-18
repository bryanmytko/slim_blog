Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to:"home#index"

  resources :posts
  resources :visuals, only: :index
  resources :about, only: :index

  get "/sitemap1.xml.gz", to:"sitemaps#show"
end
