Rails.application.routes.draw do

  get 'dashboard', to: 'dashboard#show'

  # resources :dashboard do
  #   member do
  #     get 'banker'
  #   end
  # end

  devise_for :susu_users
  root 'home#index'

  get 'about', to: 'home#about'
  get 'contact', to: 'home#contact'
  get 'learn', to: 'home#learn'
end
