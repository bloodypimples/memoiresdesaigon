Rails.application.routes.draw do
  root "pages#home"
  get 'stay', to: "pages#stay"
  get 'explore', to: "pages#explore"
  get 'share', to: "pages#share"
  get 'contact', to: "pages#contact"
  get 'choose_your_room', to: "pages#choose_your_room"
  post 'choose_your_room', to: "pages#choose_your_room"
end
