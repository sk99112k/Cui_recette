Rails.application.routes.draw do

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }
  devise_for :members, controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  namespace :admin do
    root to: "homes#top"
    resources :members, only: [:show]
    resources :genres, only: [:create, :index, :edit, :update]
    resources :recipes, only: [:show, :index] do
      resources :comments, only: [:destroy]
    end
    post '/guests/guest_sign_in' => 'guests#new_guest'
  end

  scope module: :public do
    root to: "homes#top"
    get "/about" => "homes#about"
    resources :members ,only: [:show, :index] do
      get '/book_marks' => 'book_marks#book_marks'
    end
    resources :lists, only: [:new, :create, :show, :index, :edit, :update]
    resources :recipes, only: [:new, :create, :show, :index, :edit, :update, :destroy] do
      collection do
        get '/search' => 'recipes#search'
      end
      resource :book_marks, only: [:create, :destroy]
      resources :comments, only: [:create, :destroy]
    end
    post '/guests/guest_sign_in' => 'guests#new_guest'
    resources :genres, only: [:index] do
      get 'search'
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
