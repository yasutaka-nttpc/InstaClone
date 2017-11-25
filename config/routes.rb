Rails.application.routes.draw do
  devise_for :users
  get 'posts' => 'posts#index'
  
  resources :posts, only: [:index, :new, :create, :edit, :update, :destroy] do
  end

  root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # mail
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
