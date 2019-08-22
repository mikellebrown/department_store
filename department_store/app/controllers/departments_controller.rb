class DepartmentsController < ApplicationController
  
  before_action :set_department, only: [:show, :update, :edit, :destroy]
  def index
    @departments = Department.all 
  end

  def show
  end

  def new
    @department = Department.new
    render partial: "form"
    # render partial: "form"
  end

  def edit
    # render partial: "form"
  end

  def create
    @department = Department.new(department_params)
    if @department.save
      redirect_to department_path
    else
        render :new
    
    end
  end

  def update
    if @department.update(department_params)
      redirect_to new_department_path(@department)
    else
      render :edit
    end
  end

  def destroy
    @department.destroy
    redirect_to department_path

  end

  private
  def set_department
    @department = Department.find(params[:id])
  end

  def department_params
    params.require(:department).permit(:department_name)
  end
end



