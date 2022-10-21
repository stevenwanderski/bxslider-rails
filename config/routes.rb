Rails.application.routes.draw do
  root 'pages#home'

  get '/install', to: 'pages#install'
  get '/options', to: 'pages#options'
  get '/examples', to: 'pages#examples'

  get '/examples/image-slideshow-captions', to: 'pages/examples#image_slideshow_captions'
  get '/examples/auto-show-start-stop-controls', to: 'pages/examples#auto_show_start_stop_controls'
end
