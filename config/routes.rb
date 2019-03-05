Rails.application.routes.draw do
  root 'posts#index'
  resources :posts
  get 'posts/:id/post_data', to: 'posts#post_data'
end
