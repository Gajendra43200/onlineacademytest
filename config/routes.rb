Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'login', to: 'sessions#new'
   post 'login', to: 'sessions#create'
   delete 'logout', to: 'sessions#destroy'

   resources :students 

  resources :completed_subjects, only: [] do
    resources :tests, only: [:new, :create]
  end

  resources :subjects do
    resources :completed_subjects, only: [:index, :new, :create]

  resources :questions do
    resources :answers do
    end
  end
  end
  # Add other routes as needed

  root 'subjects#index'


      
end
