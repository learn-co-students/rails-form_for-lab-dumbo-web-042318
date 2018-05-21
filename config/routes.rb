Rails.application.routes.draw do

  # get 'students/new'
  #
  # get 'students/create'
  #
  # get 'students/show'
  #
  # get 'students/edit'
  #
  # get 'students/update'
  #
  # get 'school_classes/new'
  #
  # get 'school_classes/create'
  #
  # get 'school_classes/show'
  #
  # get 'school_classes/edit'
  #
  # get 'school_classes/update'

  resources :school_classes, :students

  # patch 'school_classes/:id', to: 'school_classes/update'
  #
  # patch 'students/:id', to: 'students/update'

end
