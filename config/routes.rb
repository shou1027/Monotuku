Rails.application.routes.draw do
  get 'posts/index'

  get 'posts/edit'

  get 'posts/post'

  get 'posts/search'

  get 'users/show'

  get 'users/index'

  get 'home/home'

  get 'home/about'

  get 'home/help'
  
  get "signup" => "users#signup"
  
  get "/" => "home#home"
  get "timeline" => "home#timeline"
  get "tag" => "home#tag"
  get "about" => "home#about"
  get "help" => "home#help"
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
