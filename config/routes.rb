Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :vehicles do 
        resources :spans
      end
    end
  end
  post '/sort', to: 'vechiles#sort'  
end
