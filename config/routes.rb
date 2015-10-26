Rails.application.routes.draw do
  root :to => "home#index"
  resources :questions do
    resources :conditions
  end
end
