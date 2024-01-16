Rails.application.routes.draw do
  resources :todo_lists
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  resources :todo_lists do
    resources :todo_items do
      member do
        get 'complete'
      end
    end
  end
   root "todo_lists#index"

  # Defines the root path route ("/")
  # root "posts#index"
end
