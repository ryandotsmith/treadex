ActionController::Routing::Routes.draw do |map|
  map.root :controller => "messengers", :action => "index"
  map.resources :messengers, :has_many => :missions
  map.resources :customers
  map.resources :missions
 
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

end
