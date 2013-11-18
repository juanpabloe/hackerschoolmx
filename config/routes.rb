Hackerschoolmx::Application.routes.draw do
  resources :applicants, only: [:create, :new]

  match "/aplicando", to: 'applicants#new', via: :get

  root 'pages#home'
end
