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
    resources :members, only: [:show, :edit, :update]
    resources :genres, only: [:create, :index, :edit, :update]

    resources :recipes, only: [:show, :index] do
      resources :comments, only: [:destroy]
    end
  end

  scope module: :public do
    root to: "homes#top"
    get "/about" => "homes#about"
    resources :lists, only: [:new, :create, :show, :index, :edit, :update]
    post '/create_list' => 'lists#create_list'
    get '/ajax_list' => 'lists#ajax_list'

    resources :members ,only: [:show, :index] do
      get '/book_marks' => 'book_marks#book_marks'
      collection do
        patch '/withdraw' => 'members#withdraw'
      end
    end

    resources :recipes, only: [:new, :create, :show, :index, :edit, :update, :destroy] do
      collection do
        get '/search' => 'recipes#search'
      end
      resource :book_marks, only: [:create, :destroy]
      resources :comments, only: [:create, :destroy] do
        resource :checks, only: [:create, :destroy]
      end
    end

    resources :genres, only: [:index] do
      get 'search'
    end
    post '/guests/guest_sign_in' => 'guests#new_guest'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
