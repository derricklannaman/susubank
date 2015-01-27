Rails.application.routes.draw do

  devise_for :susu_users
  root 'home#index'

  get 'about', to: 'home#about'
  get 'contact', to: 'home#contact'
  get 'learn', to: 'home#learn'
end
