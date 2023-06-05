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
    resources :recipes, only: [:show, :index] do
      resources :comments, only: [:destroy]
    end
  end

  scope module: :public do
    root to: "homes#top"
    get "/about" => "homes#about"
    resources :members ,only: [:show, :index]
    resources :lists, only: [:new, :create, :show, :index, :edit, :update, :destroy]
    resources :recipes, only: [:new, :create, :show, :index, :edit, :update, :destroy] do
      resource :book_marks, only: [:create, :destroy]
      resources :comments, only: [:create, :destroy]
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
