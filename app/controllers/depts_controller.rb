class DeptsController < ApplicationController

  before_action :set_dept, only: [:show, :edit, :update, :destroy]

  def index
    @depts = Dept.all
    # render :index
  end

  def show
  end

  def new
    @dept = Dept.new
    render partial: "form"
  end

  def create
    @dept = Dept.new(dept_params)

    if @dept.save
      redirect_to dept_path(@dept.id)
    else
      render partial: "form"
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @dept.update(dept_params)
      redirect_to dept_path(@dept.id)
    else
      render partial: "form"
    end
  end

  def destroy
    @dept.destroy
    redirect_to depts_path
  end

private
  def dept_params
    params.require(:dept).permit(:category, :description, :manager, :seasonal)
  end

  def set_dept
    @dept = Dept.find(params[:id])
  end

end


