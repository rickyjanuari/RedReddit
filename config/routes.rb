Rails.application.routes.draw do
  devise_for :users
  resources :links do
	member do 
  		put "like", 	to: "links#upvote"
  		put "dislike",  to: "links#donwvote"
  	end
	end
 root to: "links#index"
end
