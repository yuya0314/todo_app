Rails.application.routes.draw do
  get "/" => "posts#index"
  get "hello/index" =>"hello#index"
  get 'posts/new' => "posts#new"
  get "posts/:id" => "posts#show"
  get "posts/:id/edit" => "posts#edit"
  post "posts/create" => "posts#create"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"
  #root "hello#index"
end
