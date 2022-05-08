Rails.application.routes.draw do

  root to: "homes#top"
  get "home/about" => "homes#about", as:"about"

  devise_for :users
  resources :users, only:[:index,:edit,:update,:show]

  resources :books, only:[:index,:edit,:update,:show,:create,:destroy] do
    resource :favorites, only:[:create,:destroy]
    resources :book_comments, only:[:create,:destroy]
  end

end
