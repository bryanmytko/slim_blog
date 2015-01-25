Rails.application.routes.draw do
  devise_for :admin,
    skip: [:registrations, :passwords],
    path_names: { sign_in: "/" }

  root to:"home#index"

  namespace :admin do
    resource :dashboard
  end
end
