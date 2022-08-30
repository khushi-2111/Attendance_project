# Rails.application.routes.draw do
  # get 'hr/index'
  # get 'admin/index'
  # get 'employee/index'
#   devise_for :users, controllers: { registrations: "users/registrations" }
#   root to: "users#show"
#   resources :users do 
#     resources :attendance_reports
#   end
#   # get 'users/index'
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end

Rails.application.routes.draw do
  get 'hr/index'
  get 'admin/index'
  get 'employee/index'
  root to: 'users#index'
  devise_for :users, controllers: { registrations: "users/registrations" }
  # authenticated :user, ->(u) { u.role(:admin) } do
  #   root to: "admin#index", as: :authenticated_user
  # end
  
  # authenticated :user, ->(u) { u.role(:employee) } do
  #   root to: "users#index", as: :authenticated_user
  # end
  resources :users do
    resources :leaves
    resources :workdays do
      resources :worklogs
    end
  end
end   
