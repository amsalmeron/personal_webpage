Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/', to: 'welcome#index'
  root to: 'welcome#index'

  resources :projects, only: :index
  resources :info, only: :index
  resources :contact, only: :index
end
