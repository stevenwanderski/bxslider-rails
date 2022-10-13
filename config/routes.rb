Rails.application.routes.draw do
  root 'pages#home'

  get '/install', to: 'pages#install'
  get '/options', to: 'pages#options'
  get '/examples', to: 'pages#examples'

  get '/examples/image-slideshow-captions', to: 'pages/examples#image_slideshow_captions'
end
