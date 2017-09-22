class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user

    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end

  end

  def update
    @project.update(project_params)
    redirect_to project_path(@project)
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :sponsor, :institution, :responsible, :members, :date_start, :date_end, :budget)
  end

  def set_project
    @project = Project.find(params[:id])
  end

end
