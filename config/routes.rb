Rails.application.routes.draw do
  get 'posts/:id/post_data', to: 'posts#post_data'
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

end
