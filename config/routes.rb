Rails.application.routes.draw do
  get 'resources/top_resources', to: 'resources#top_resources', as: 'top_resources'
  get '/languages/add_or_delete', to: 'languages#new_or_destroy', as: 'new_or_delete_language'
  get '/mentors/login', to: 'sessions#mentor_new'
  get '/students/login', to: 'sessions#student_new'
  post '/mentor_login', to: 'sessions#mentor_create'
  post '/student_login', to: 'sessions#student_create'

  resources :resources
  resources :languages

  resources :mentors do
    resources :resources
  end

  resources :students do
    resources :resources, only: [:index, :new, :show, :edit]
  end

  root to: 'application#index'


  get '/auth/github/callback' => 'sessions#mentor_gh_create'

  get '/logout', to: 'sessions#logout'

  get '/student/:id/mentor', to: 'students#show_mentor', as: 'student_mentor'

  get '/mentor/:id/student', to: 'mentors#show_student', as: 'mentor_student'

  post '/add_mentor', to: 'students#add_mentor'

  post '/delete_language', to: 'languages#destroy'
end
