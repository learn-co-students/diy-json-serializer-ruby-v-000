Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
  get 'posts/:id/body', to: 'posts#post_data'
end
