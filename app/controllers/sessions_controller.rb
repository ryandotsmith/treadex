class SessionsController < Clearance::SessionsController
  private
    def url_after_create
      user_messenger_path(  )
    end
end