class MessengersController < ApplicationController
  before_filter :load_user
  def index
    @messengers = Messenger.find( :all )
    render :layout => 'application'
  end#index
  
  def new
    @messenger = @user.build_messenger
  end#new

  def create
    @messenger = @user.build_messenger( params[:messenger] )
    if @messenger.save
      flash[:success] = "Profile Created!"
      redirect_to @messenger
    end
  end
  
  def show
    @messenger = Messenger.find( params[:id] )
  end

  def update
    @messenger = Messenger.find( params[:id] )
    
    if @messenger.update_attributes( params[:messenger] )  
      @messenger.checked_in = DateTime.now if params[:checking_in] == "true"
      @messenger.save
      respond_to do |format|
        format.js { render :text => "ok" }
        format.html { redirect_to messenger_path( @messenger ) }
      end
    end
  end

  def edit
    @messenger = Messenger.find( params[:id] )
  end#edit
  
protected 
  def load_user
    @user = current_user
  end#load_user
end
