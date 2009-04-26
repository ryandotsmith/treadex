# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  ####################
  #get_css
  def get_css
    []
  end#get_css
  
  ####################
  #get_js
  def get_js
    []
  end#get_js

  ####################
  #status( object )
  def to_status( input )
    case input
    when 0
      return "In Progress"
    when 1
      return "Complete"
    when 2
      return "Rated"
    end
  end#status( object )
  
  def shorten( object )
    return object if object.length < 100 
		object[0..99] + " ..."
  end#shorten

end
