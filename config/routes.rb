Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]
  patch '/posts/:id', to: 'posts#update'
  get 'posts/:id/post_data', to: 'posts#post_data'
end
