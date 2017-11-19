Rails.application.routes.draw do
  get 'posts' => 'posts#index'
  
  resources :posts, only: [:index, :new, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
