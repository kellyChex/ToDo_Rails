Rails.application.routes.draw do
  match('tasks', {:via => :get, :to => 'tasks#index'})
  match('tasks', {:via => :post, :to => 'tasks#create'})
  # match('tasks', {:via => [:patch, :put], :to => 'tasks#create'})
  match('tasks/:id/complete', {:via => [:patch, :put], :to => 'tasks#complete'})
  match('/', {:via => :get, :to => 'tasks#index'})
end
