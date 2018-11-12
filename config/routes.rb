Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
  resources :authors
  get 'posts/:id/body', to: 'posts#body'
end
