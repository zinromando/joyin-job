Rails.application.routes.draw do
  devise_for :users

  resources :activities
  root 'activities#index'

  namespace :admin do
    resources :activities
  end
end
