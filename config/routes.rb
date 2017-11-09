Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root "pages#home"
  get 'stay', to: "rooms#index"
  get 'explore', to: "tours#index"
  get "tours/:id", to: "tours#show", as: "tour"
  post "tours/:id/form", to: "tour_forms#create", as: "tour_form"
  get 'share', to: "pages#share"
  get 'contact', to: "pages#contact"
  get 'choose_your_room', to: "pages#choose_your_room"
  post 'choose_your_room', to: "pages#choose_your_room"
  get "signin", to: "sessions#new"
  post "signin", to: "sessions#create"
  get "signout", to: "sessions#delete"
  get "rooms/:id", to: "rooms#show", as: "room"
  get "events/:id", to: "events#show", as: "event"
end
