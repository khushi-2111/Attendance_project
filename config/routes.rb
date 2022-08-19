# Rails.application.routes.draw do
#   devise_for :users, controllers: { registrations: "users/registrations" }
#   root to: "users#show"
#   resources :users do 
#     resources :attendance_reports
#   end
#   # get 'users/index'
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end

Rails.application.routes.draw do
  root to: 'users#index'
  devise_for :users, controllers: { registrations: "users/registrations" }
  resources :users do
    resources :leaves
    resources :workdays do
      resources :worklogs
    end
  end
end
