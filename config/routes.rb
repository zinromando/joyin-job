Rails.application.routes.draw do
  devise_for :users

  resources :activities do
    resources :intro_letters
  end
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
