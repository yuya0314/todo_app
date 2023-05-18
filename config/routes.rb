Rails.application.routes.draw do
  get 'posts/new' => "posts#new"
  get "/" =>"hello#index"
  #root "hello#index"
end
