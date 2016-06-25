class EmployeesController < ApplicationController
  
  def new
   @employees = Employee.all
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(allowed_params)
    if @employee.save
       flash[:notice] = "Employee details saved successfully"
      redirect_to new_employee_path
    else
      render 'new'
    end
  end

  def index
    @employees = Employee.all
  end

  def show
  end




   def edit
     @employee = Employee.find(params[:id])
    @employees = Employee.all
   
     @employee1 =  @employee

     

  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update_attributes(allowed_params)
      flash[:notice] = "Data updated successfully"
      redirect_to new_employee_path
    else 
      render 'new'
    end
  end




  def delete
    @employee= Employee.find(params[:id])
     employee = Employee.find(params[:id]).destroy
      flash[:notice] = "Data deleted successfully"
      redirect_to new_employee_path

  end

  def destroy
   
  end

  private
    def allowed_params
      params.require(:employee).permit(:Eid, :name)
    end
end
