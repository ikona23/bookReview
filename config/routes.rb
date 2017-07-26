Rails.application.routes.draw do
  get 'welcome/home'

  devise_for :users
  resources :books do
    resources :reviews
  end
  root 'welcome#index'
end
