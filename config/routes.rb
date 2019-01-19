Rails.application.routes.draw do

  get 'posts/:id/post_data', to: 'posts#post_data'
  # get 'posts/:id/body', to: 'posts#body'

  resources :posts


end
