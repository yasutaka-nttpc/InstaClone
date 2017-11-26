Rails.application.routes.draw do
#  devise_for :users

  resources :posts, only: [:index, :new, :create, :edit, :update, :destroy] do
  end

  root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # mail
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  # sns login
  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }
end
