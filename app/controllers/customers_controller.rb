class CustomersController < ApplicationController

  def new
    if Messenger.are_available?
      @customer = Customer.new
      @messenger = Messenger.find( params[:id] )
    else
      flash[:failure] = "Therre are no messengers available at this time."
      redirect_to root_url
    end
  end

  def create
    @customer   = Customer.new( params[:customer] )
    @messenger  = Messenger.find( params[:messenger_id ] )
    if @customer.save
      @mission = @customer.missions.build
      @mission.status = 0
      @mission.messenger = @messenger
      @mission.save
      flash[:success] = "Your messenger will be in contact with your shortly."
      redirect_to root_url
    end
  end 

end
