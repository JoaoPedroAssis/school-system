class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy, :add_student, :enroll_student]

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)

    if @course.save
      flash[:success] = "Curso criado com sucesso"
      redirect_to courses_path
    else
      flash[:error] = "Não foi possível criar o curso"
      redirect_to courses_path
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    if @course.update(course_params)
      flash[:success] = "Curso atualizado com sucesso"
      redirect_to course_path(@course)
    else
      flash[:error] = "Não foi possível atualizar o curso"
      redirect_to courses_path
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    if @course.destroy
      flash[:success] = "Curso deletado com sucesso"
      redirect_to courses_path
    else
      flash[:success] = "Não foi possível deletar o curso"
    end
  end

  def add_student
    @students = Student.all.select{|student| not @course.students.include? student }
  end

  def enroll_student
    params[:student_ids].each do |student_id|
      student = Student.find student_id.to_i
      @course.students << student
      if @course.vagas_ocupadas <= @course.vagas_total
        @course.vagas_ocupadas += 1
      else
        if @course.save
          flash[:warning] = "Nem todos os alunos foram matriculados devido ao total de vagas"
          redirect_to course_path(@course)
        else
          flash[:error] = "Não foi possível matricular os alunos"
          redirect_to course_path(@course)
        end
        break
      end
    end

    if @course.save
      flash[:success] = "Alunos matriculados com sucesso"
      redirect_to course_path(@course)
    else
      flash[:error] = "Não foi possível matricular os alunos"
      redirect_to course_path(@course)
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_params
      params.require(:course).permit(:codigo, :descricao, :horas_aula, :vagas_total, :vagas_ocupadas, :data_inicio, :data_fim, :teacher_id)
    end
end
