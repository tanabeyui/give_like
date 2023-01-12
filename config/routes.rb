Rails.application.routes.draw do

  get '/items/search' => 'public/items#search'
  get '/reviews/search' => 'public/reviews#search'

  scope module: :public do
    resources :end_users, only: [:show, :edit, :update]
    resources :items, only: [:index, :show]
    resources :reviews, only: [:new, :create, :edit, :update, :destroy]
    resource :favorites, only: [:create, :update, :destroy]
    resource :want_items, only: [:create, :update, :destroy]
  end


  devise_for :end_users, skip: [:passwords],
    path: '',
    path_names: {
      sign_up: '',
      sign_in: 'log_in',
      sign_out: 'log_out',
      registration: "sign_up",
    },
    controllers: {
      registrations: "public/registrations",
      sessions: "public/sessions"
    }

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

end
