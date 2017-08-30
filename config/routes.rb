Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'welcome#index'
  get 'welcome/index'

  resources :blog_threads, only: [:index] do
    resources :posts, module: :blog_threads
  end

end
