Rails.application.routes.draw do
  resources :posts
  get 'posts/:id/body', to: 'posts#body'
  get 'posts/:id/post_data', to: 'posts#post_data'
end
