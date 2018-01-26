Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#root'

  namespace  :api, {format: 'json'} do
    namespace :v1 do
      # student
      resources :students

      # teacher
      resources :teachers

      # homework
      resources :homeworks
      post '/pre_homework', to: 'homeworks#pre_homework'

      # class
      resources :classes

    end
  end

end
