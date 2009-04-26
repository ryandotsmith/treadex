class MessengerObserver < ActiveRecord::Observer
  ####################
  #after_create
  def before_create( messenger )
    messenger.checked_in = DateTime.now
  end#after_create
end