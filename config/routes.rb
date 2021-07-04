Rails.application.routes.draw do
  resources :books

  get 'homes/index'
  get 'homes/show'
  get 'homes/new'
  get 'homes/edit'
  root :to => 'homes#top'
  # .../books/1や...books/3に該当する

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
