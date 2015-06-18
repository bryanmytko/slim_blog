Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to:"home#index"

  resources :posts
  resources :visuals, only: :index
  resources :about, only: :index

  match "/sitemap1.xml.gz" => "sitemaps#show"
end
