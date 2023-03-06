Rails.application.routes.draw do
  get 'books/new'
  post 'books'=>'books#create'
  get 'books'=>'books#index', as: :index_book
  get 'books/show'
  get 'books/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/'=>'homes#top'
end
