Rails.application.routes.draw do

  root 'home#index'

  devise_for :susu_users, controllers: { registrations: "registrations" }

  get 'about', to: 'home#about'
  get 'contact', to: 'home#contact'
  get 'learn', to: 'home#learn'
  get 'dashboard', to: 'dashboard#show'

end
