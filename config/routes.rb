Rails.application.routes.draw do
  devise_for :user_logins
  root 'home#index'
end
