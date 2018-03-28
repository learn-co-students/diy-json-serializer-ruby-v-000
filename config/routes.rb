Rails.application.routes.draw do
  # resources :posts, only: [:index, :show, :new, :create, :edit]
	resources :posts
	get 'posts/:id', to: 'posts#show'
  get 'posts/:id/post_data', to: 'posts#post_data'
  get 'posts/:id/body', to: 'posts#body'
end
