class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy, :cancel_registration]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    if @student.save
      flash[:success] = "Aluno criado com sucesso"
      redirect_to courses_path
    else
      flash[:error] = "Não foi possível criar o aluno"
      redirect_to courses_path
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    if @student.update(student_params)
      flash[:success] = "Aluno atualizado com sucesso"
      redirect_to course_path(@course)
    else
      flash[:error] = "Não foi possível atualizar o aluno"
      redirect_to courses_path
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    if @student.destroy
      flash[:success] = "Aluno deletado com sucesso"
      redirect_to courses_path
    else
      flash[:success] = "Não foi possível deletar o aluno"
    end
  end

  def cancel_registration
    @student.courses.delete(Course.find params[:course])

    if @student.save
      flash[:success] = "Matrícula cancelada com sucesso"
      redirect_to student_path(@student)
    else
      flash[:error] = "Não foi possível cancelar a matrícula"
      redirect_to student_path(@student)
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_params
      params.require(:student).permit(:matricula, :nome, :sexo, :estado_civil, :filiacao, :endereco, :telefone, :email, :esporte_preferido, :escolaridade, :naturalidade, :cidade, :uf, :pais, :cargo, :cpf, :identidade)
    end
end
