class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]

  # GET /teachers
  # GET /teachers.json
  def index
    @teachers = Teacher.all
  end

  # GET /teachers/1
  # GET /teachers/1.json
  def show
  end

  # GET /teachers/new
  def new
    @teacher = Teacher.new
  end

  # GET /teachers/1/edit
  def edit
  end

  # POST /teachers
  # POST /teachers.json
  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      flash[:success] = "Professor criado com sucesso"
      redirect_to courses_path
    else
      flash[:error] = "Não foi possível criar o professor"
      redirect_to courses_path
    end
  end

  # PATCH/PUT /teachers/1
  # PATCH/PUT /teachers/1.json
  def update
    if @teacher.update(teacher_params)
      flash[:success] = "Professor atualizado com sucesso"
      redirect_to course_path(@course)
    else
      flash[:error] = "Não foi possível atualizar o professor"
      redirect_to courses_path
    end
  end

  # DELETE /teachers/1
  # DELETE /teachers/1.json
  def destroy
    if @teacher.destroy
      flash[:success] = "Curso deletado com sucesso"
      redirect_to courses_path
    else
      flash[:success] = "Não foi possível deletar o curso"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def teacher_params
      params.require(:teacher).permit(:matricula, :nome, :sexo, :estado_civil, :filiacao, :titulacao, :endereco, :telefone, :cpf, :identidade, :naturalidade, :cidade, :uf, :pais, :email, :escolaridade, :cargo)
    end
end
