Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: [:index, :show, :new, :create, :edit]
  resources :posts
  get 'posts/:id/post_data', to: 'posts#post_data'
  patch 'posts/:id', to: 'posts#post_edit'
end
