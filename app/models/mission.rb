class Mission < ActiveRecord::Base
  belongs_to :messenger
  belongs_to :customer
  ####################
  #complete!
  def complete!
    self.status = 1
    self.save
  end#complete!
end
