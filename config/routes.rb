Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]
  # get 'posts/:id/body', to: 'posts#body'
  #above is no longer accurate as whole post is serialized
  get 'posts/:id/post_data', to: 'posts#post_data'
end
