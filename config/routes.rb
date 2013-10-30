Blog::Application.routes.draw do
 
	resources :posts
 
	root to: "welcome#index"
  
	get 'posts/:id' => 'posts#show'
  
	get 'posts/:format' => 'posts#index'
  
	resources :posts do
	  resources :comments
	end
  
end

