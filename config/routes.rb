Blog::Application.routes.draw do
  resources :comments

  resources :category_posts

  resources :categories

  resources :posts

  resources :users

	root :to => "posts#index"
end
