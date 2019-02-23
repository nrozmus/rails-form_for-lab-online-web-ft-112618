<<<<<<< HEAD
class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create

    # @student = Student.create(frist_name: params[:student][:first_name], last_name: params[:student][:last_name])
    @student = Student.create(params[:student])
    redirect_to student_path(@student)

  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params[:student])
    redirect_to student_path(@student)
  end

end #end of class
=======
class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
>>>>>>> e32d271ee64d82b2e8fcb1cf4aa884f911a49f19
