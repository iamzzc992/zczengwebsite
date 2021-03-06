Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'welcome/index'

  resources :academics do
    resources :courses
  end
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
