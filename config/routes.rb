Rails.application.routes.draw do
  namespace :admin do
    get 'members/show'
    get 'members/index'
  end
  namespace :admin do
    get 'home/top'
  end
  namespace :public do
    get 'lists/index'
    get 'lists/show'
    get 'lists/new'
    get 'lists/edit'
  end
  namespace :public do
    get 'recipes/index'
    get 'recipes/show'
    get 'recipes/new'
    get 'recipes/edit'
  end
  namespace :public do
    get 'members/index'
    get 'members/show'
    get 'members/edit'
    get 'members/update'
  end
  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
  devise_for :members, controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
