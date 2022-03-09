Rails.application.routes.draw do

  devise_for :drinks,skip: [:passwords], controllers: {
  registrations: "drink/registrations",
  sessions: 'drink/sessions'
}

  namespace :drink do
    resources :voices, only: [:index, :create, :destroy]
  end

  devise_for :smokes, skip: [:passwords] ,controllers: {
  registrations: "smoke/registrations",
  sessions: "smoke/sessions"
}

  namespace :smoke do
    resources :voises, only: [:index, :create, :destroy]
  end

  root 'homes#top'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end