Rails.application.routes.draw do

  get '/items/search' => 'public/items#search'

  scope module: :public do
    resources :items, only: [:index, :show]
    resource :favorites, only: [:create, :update, :destroy]
    resource :want_items, only: [:create, :update, :destroy]
  end

  devise_for :end_users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

end
