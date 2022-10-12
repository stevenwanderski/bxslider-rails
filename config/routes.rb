Rails.application.routes.draw do
  root 'pages#home'

  get '/install', to: 'pages#install'
  get '/options', to: 'pages#options'
  get '/examples', to: 'pages#examples'
end
