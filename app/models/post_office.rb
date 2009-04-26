class PostOffice < ActionMailer::Base
  ####################
  #complete_mission
  def complete_mission( customer, mission )
    recipients    customer.email
        from          "donotreply@treadex.org"
        subject       "your messegner has delivered!"
        sent_on       Time.now
        body["url"] = "http://www.treadex.org/missions/#{mission.id}/edit" 
  end#complete_mission

end
