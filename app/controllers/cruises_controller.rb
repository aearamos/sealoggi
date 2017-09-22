class CruisesController < ApplicationController
  def new
    @cruise = Cruise.new
  end

  def create
    @cruise = Cruise.new(cruise_params)
    @cruise.user = current_user
    @project = Project.find(params[:project_id])
    @cruise.project = @project

    if @cruise.save
      redirect_to cruise_path(@cruise)
    else
      render :new
    end
  end

  def update
    @cruise.update(cruise_params)
    redirect_to cruise_path(@cruise)
  end

  def destroy
    @cruise = Cruise.find(params[:id])
    @cruise.destroy
    redirect_to cruises_path
  end

  def index
    @cruises = Cruises.all
  end

  def show
    @cruise = Cruise.find(params[:id])
  end

  private

  def cruise_params
    params.require(:cruise).permit(:ship, :project, :location_start, :location_end, :field, :responsible, :crew, :points, :comment)
  end

  def set_cruise
    @cruise = Cruise.find(params[:id])
  end
end
