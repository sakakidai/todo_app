Rails.application.routes.draw do
  devise_for :user_logins, controllers: { :omniauth_callbacks => "omniauth_callbacks" }
  root 'home#index'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: '/letter_opener'
  end
end
