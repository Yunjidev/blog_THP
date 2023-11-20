Rails.application.routes.draw do
  get 'users/show'
  get 'users/update_article_privacy'
  devise_for :users
  root 'articles#index'

  resources :users, only: [:show] do
    member do
      patch 'update_article_privacy/:article_id', to: 'users#update_article_privacy', as: :update_article_privacy
    end
  end
  
  resources :articles
end