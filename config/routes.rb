Rails.application.routes.draw do
  resources :school_classes, only: [:create, :edit, :new, :show, :update]
  patch 'school_classes/:id', to: 'school_classes#update'
  resources :students, only: [:create, :edit, :new, :show, :update]
  patch 'students/:id', to: 'students#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
