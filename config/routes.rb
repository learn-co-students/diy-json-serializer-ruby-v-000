Rails.application.routes.draw do

  root 'posts#index'
  
  resources :posts, only: [:index, :show, :new, :create, :edit]
  get 'posts/:id/post_data', to: 'posts#post_data'
end
