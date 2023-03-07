Rails.application.routes.draw do
  root 'homes#top'
  get 'books/:id/new'=>'books#new'
  post 'books'=>'books#create'
  get 'books'=>'books#index',as: :index_book
  get 'books/show'
  get 'books/:id/edit'=>'books#edit'
resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
