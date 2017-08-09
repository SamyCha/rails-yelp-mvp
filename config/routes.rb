Rails.application.routes.draw do
  get 'visitors/index'

  get 'visitors/show'

  get 'visitors/new'

  get 'visitors/create'

  get 'visitors/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end

end
