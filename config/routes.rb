Rails.application.routes.draw do

  namespace :public do
    get 'items/index'
    get 'items/search'
    get 'items/show'
  end
  devise_for :end_users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

end
