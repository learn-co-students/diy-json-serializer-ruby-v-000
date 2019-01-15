Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]
  get 'posts/:id/body', to: 'posts#body'
  get 'posts/:id/post_data', to: 'posts#post_data'
end
