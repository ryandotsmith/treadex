class MissionsController < ApplicationController

  def show
    @mission = Mission.find( params[:id ])
  end
  def edit
    @mission = Mission.find( params[:id] )
  end 
  def update
    @mission = Mission.find( params[:id] )
    @mission.complete! if params[:complete_mission] == "true"
    @mission.rate!    if params[:rate_mission] == "true"
    if @mission.update_attributes( params[:mission])
      flash[:success] = "updated mission."
    end
  end

end
