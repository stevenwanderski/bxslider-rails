Rails.application.routes.draw do
  root 'pages#home'

  get '/install', to: 'pages#install'
  get '/options', to: 'pages#options'
  get '/examples', to: 'pages#examples'

  get '/examples/image-slideshow-captions', to: 'pages/examples#image_slideshow_captions'
  get '/examples/auto-show-start-stop-controls', to: 'pages/examples#auto_show_start_stop_controls'
  get '/examples/manual-show-without-infinite-loop', to: 'pages/examples#manual_show_without_infinite_loop'
  get '/examples/slideshow-adaptive-height', to: 'pages/examples#slideshow_adaptive_height'
  get '/examples/carousel-demystified', to: 'pages/examples#carousel_demystified'
  get '/examples/carousel-static-number-slides', to: 'pages/examples#carousel_static_number_slides'
  get '/examples/carousel-dynamic-number-slides', to: 'pages/examples#carousel_dynamic_number_slides'
  get '/examples/thumbnail-pager-1', to: 'pages/examples#thumbnail_pager_1'
  get '/examples/thumbnail-pager-2', to: 'pages/examples#thumbnail_pager_2'
  get '/examples/vertical-slideshow', to: 'pages/examples#vertical_slideshow'
  get '/examples/custom-next-prev-selectors', to: 'pages/examples#custom_next_prev_selectors'
  get '/examples/multiple-slideshows', to: 'pages/examples#multiple_slideshows'
  get '/examples/callback-api', to: 'pages/examples#callback_api'
  get '/examples/public-methods', to: 'pages/examples#public_methods'
  get '/examples/video', to: 'pages/examples#video'
  get '/examples/ticker', to: 'pages/examples#ticker'

  match '*unmatched', to: 'application#not_found_method', via: :all
end
