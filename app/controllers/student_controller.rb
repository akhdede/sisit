class StudentController < ApplicationController
  before_action :authenticate_user!

  def index
    if params[:search]
      @students = Student.where('nama_lengkap like ?', "%#{params[:search]}%").paginate(per_page: 5, page: params[:page])
    else
      @students = Student.order(nama_lengkap: :asc).paginate(per_page: 5, page: params[:page])
    end
  end

  def show
    @student = Student.friendly.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    @student = Student.friendly.find(params[:id])

    if @student.destroy
      redirect_to student_index_path
    end
  end
end
