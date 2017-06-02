Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :posts

  # resources :posts do
  #   resources :comments
  # end

  get "/posts", to: "posts#index"
  get "/posts/new", to: "posts#new", as: :new_post
  get "/posts/:id", to: "posts#show", as: :post
  get "/posts/:id/edit", to: "posts#edit", as: :edit_post

  post "/posts", to: "posts#create"

  patch "/posts/:id", to: "posts#update"

  delete "/posts/:id", to: "posts#destroy"

  # get "/posts/:id/comments", to: "posts#show", as: :comments
  get "/posts/:id/comments", to: "comments#index", as: :comments
  get "/posts/:id/comments/new", to: "comments#new", as: :new_comment
  get "/posts/:id/comments/:comment_id", to: "comments#show", as: :comment
  get "/posts/:id/comments/:comment_id/edit", to: "comments#edit", as: :edit_comment

  post "/posts/:id/comments", to: "comments#create"

  patch "/posts/:id/comments/:comment_id", to: "comments#update"

  delete "/posts/:id/comments/:comment_id", to: "comments#destroy", as: :delete_comment

end
