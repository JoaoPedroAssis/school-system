Rails.application.routes.draw do
  resources :courses
  resources :teachers
  resources :students

  get 'enroll_student/:id', to: 'courses#add_student', as: :add_student
  post 'enroll_student/:id', to: 'courses#enroll_student'

  delete ':id/cancel_registration/:course', to: 'students#cancel_registration', as: :cancel_registration

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
