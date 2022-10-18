Rails.application.routes.draw do
  resources :avalia
  resources :atividades
  resources :disciplicas
  resources :alunos
  resources :turmas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
