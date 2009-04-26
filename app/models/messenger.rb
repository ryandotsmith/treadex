class Messenger < ActiveRecord::Base
  belongs_to :user
  has_many :missions
  has_many :customers, :through => :missions
  has_attached_file :avatar, 
                      :styles => { :medium => "300x300>",
                                   :thumb => "100x100>" }
  ####################
  #around
  def around?
    !(checked_in < ( DateTime.now - 3.hours ))
  end#around

  ####################
  #self.are_available?
  def self.are_available?
    Messenger.find(:all).any? {|messenger| messenger.around? }
  end#self.are_available?

  ####################
  #self.how_many_are_available
  def self.how_many_are_available
    count = 0
    Messenger.find(:all).each {|messenger| count += 1 if messenger.around? }
    count
  end#self.how_many_are_available

end
