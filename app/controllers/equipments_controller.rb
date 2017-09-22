class EquipmentsController < ApplicationController
  def new
    @equipment = Equipment.new
  end

  def create
    @equipment.user = current_user
    @equipment = Equipment.new(equipment_params)
    if @equipment.save
      redirect_to equipment_path(@equipment)
    else
      render :new
    end
  end

  def update
    @equipment.update(equipment_params)
    redirect_to equipment_path(@equipment)
  end

  def destroy
    @equipment = Equipment.find(params[:id])
    @equipment.destroy
    redirect_to equipments_path
  end

  def index
    @equipments = Equipment.all
  end

  def show
    @equipment = Equipment.find(params[:id])
  end

  private

  def equipment_params
    params.require(:equipment).permit(:name, :type, :model, :year, :last_calibrated, :company, :comment)
  end

  def set_equipment
    @equipment = Equipment.find(params[:id])
  end
end
