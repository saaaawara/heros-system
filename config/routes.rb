Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#root'

  namespace  :api, {format: 'json'} do
    namespace :v1 do
      # student
      resources :students

    end
  end

end
