Rails.application.routes.draw do
  get "hello/index" =>"hello#index"
  get 'posts/new' => "posts#new"
 
  get "/" => "posts#index"
  post "posts/create" => "posts#create"
  #root "hello#index"
end
