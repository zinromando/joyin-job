Rails.application.routes.draw do
  devise_for :users

  resources :activities
  root 'activities#index'

  namespace :admin do
    resources :activities do
      member do
        post :publish
        post :hide
      end
    end
  end
end
