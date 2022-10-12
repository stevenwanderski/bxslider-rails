Rails.application.routes.draw do
  root 'pages#home'

  get '/install', to: 'pages#install'
end
