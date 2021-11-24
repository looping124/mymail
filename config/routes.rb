Rails.application.routes.draw do
  get 'emails/index'
  get 'emails/new'
  get 'emails/create'
  get 'emails/show'
  get 'emails/edit'
  get 'emails/update'
  get 'emails/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
