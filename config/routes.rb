Rails.application.routes.draw do

  root to: "homes#top"
  get "homes/about" => "homes#about", as:"about"

  devise_for :users
  resources :users, only:[:index,:edit,:update,:show]

  resources :books, only:[:index,:edit,:update,:show,:create,:destroy]

end
