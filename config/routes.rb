Rails.application.routes.draw do

  root to: 'public/homes#top'

  get '/not_found' => 'public/homes#not_found', as: 'not_found'
  get '/responses/thanks' => 'public/responses#thanks'
  get '/items/search' => 'public/items#search'
  get '/reviews/ranking' => 'public/reviews#ranking'
  post '/reviews/confirm' => 'public/reviews#confirm'

  get '/end_users/:screen_name', to: 'public/end_users#show', as: 'end_user'
  get '/end_users/:screen_name/reviews', to: 'public/reviews#index', as: 'end_user_reviews'
  get '/end_users/:screen_name/favorites', to: 'public/favorites#index', as: 'end_user_favorites'
  get '/end_users/:screen_name/want_items', to: 'public/want_items#index', as: 'end_user_want_items'
  get '/end_users/:screen_name/edit' => 'public/end_users#edit', as: 'end_user_edit'
  patch '/end_users/:screen_name' => 'public/end_users#update', as: 'end_users'
  get '/end_users/unsubscribe/confirm' => 'public/end_users#confirm', as: 'end_user_confirm'
  patch '/end_users' => 'public/end_users#unsubscribe', as: 'end_users_unsubscribe'

  scope module: :public do
    resources :responses, only: [:index, :new, :create, :destroy]
    resources :reviews, only: [:new, :create, :edit, :update, :destroy]
    resources :items, only: [:index, :show]
    resource :favorites, only: [:create, :update, :destroy]
    resource :want_items, only: [:create, :update, :destroy]
  end



  get '/admin' => 'admin/homes#top', as: 'admin'
  patch '/admin/reviews/confirmed' => 'admin/reviews#confirmed', as: 'review_confirmed'
  patch '/admin/reviews/confirmed_all' => 'admin/reviews#confirmed_all', as: 'reviews_confirmed_all'
  patch '/admin/reviews/disclosed' => 'admin/reviews#disclosed', as: 'review_disclosed'
  patch '/admin/reviews/closed' => 'admin/reviews#closed', as: 'review_closed'
  patch '/admin/end_users/membership' => 'admin/end_users#membership', as: 'end_user_membership'
  patch '/admin/end_users/unsubscribe' => 'admin/end_users#unsubscribe', as: 'end_user_unsubscribe'

  namespace :admin do
    resources :end_users, only: [:index, :show]
    resources :reviews, only: [:index]
    resources :responses, only: [:index, :destroy]
  end



  devise_for :end_users, skip: [:passwords],
    path: '',
    path_names: {
      sign_up: '',
      sign_in: 'sign_in',
      sign_out: 'sign_out',
      registration: "sign_up",
    },
    controllers: {
      registrations: "public/registrations",
      sessions: "public/sessions"
    }

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    registrations: "admin/registrations",
    sessions: "admin/sessions"
  }

end
