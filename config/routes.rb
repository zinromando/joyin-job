Rails.application.routes.draw do
  devise_for :users

  resources :welcome do
  end

  resources :activities do
    resources :intro_letters
  end
  root 'welcome#index'

  namespace :admin do
    resources :activities do
      member do
        post :publish
        post :hide
      end

      resources :intro_letters
    end
  end
end
