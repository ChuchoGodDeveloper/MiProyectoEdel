Rails.application.routes.draw do
  root "home#index"
# config/routes.rb
resources :gallery_images, only: [:create, :destroy]

  resources :usuarios

  post 'probar_captcha', to: 'home#probar_captcha', as: 'probar_captcha'
end