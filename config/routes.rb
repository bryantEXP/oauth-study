Rails.application.routes.draw do

# <---- LESSON ---->

  root to: 'application#welcome'
  # Step Eighteen:
  # Override controller source with the controller you just wrote
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
