ActionController::Routing::Routes.draw do |map|
  map.root :controller => "messengers", :action => "index"
  map.resources :messengers, :has_many => :missions
  map.resources :customers
  map.resources :missions
  map.resource  :session,
    :controller => 'clearance/sessions',
    :only => [:new, :create, :destroy]

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

end
