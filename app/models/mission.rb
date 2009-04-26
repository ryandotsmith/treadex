class Mission < ActiveRecord::Base
  belongs_to :messenger
  belongs_to :customer
  ####################
  #complete!
  def complete!
    self.status = 1
    PostOffice.deliver_complete_mission(self.customer, self ) if self.save
  end#complete!
  ####################
  #rate!
  def rate!
    self.status = 2
    self.save
  end#rate!
end
