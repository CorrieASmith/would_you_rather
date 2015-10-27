Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :to => "home#index"
  devise_for :users
  resources :users
  resources :questions do
    resources :conditions
  end
end
