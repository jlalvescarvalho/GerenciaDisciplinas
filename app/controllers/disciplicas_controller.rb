class DisciplicasController < ApplicationController
  before_action :set_disciplica, only: %i[ show edit update destroy ]

  # GET /disciplicas or /disciplicas.json
  def index
    @disciplicas = Disciplina.all
  end

  # GET /disciplicas/1 or /disciplicas/1.json
  def show
  end

  # GET /disciplicas/new
  def new
    @disciplica = Disciplina.new
  end

  # GET /disciplicas/1/edit
  def edit
  end

  # POST /disciplicas or /disciplicas.json
  def create
    @disciplica = Disciplina.new(disciplica_params)

    respond_to do |format|
      if @disciplica.save
        format.html { redirect_to disciplica_url(@disciplica), notice: "Disciplina was successfully created." }
        format.json { render :show, status: :created, location: @disciplica }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @disciplica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disciplicas/1 or /disciplicas/1.json
  def update
    respond_to do |format|
      if @disciplica.update(disciplica_params)
        format.html { redirect_to disciplica_url(@disciplica), notice: "Disciplina was successfully updated." }
        format.json { render :show, status: :ok, location: @disciplica }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @disciplica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disciplicas/1 or /disciplicas/1.json
  def destroy
    @disciplica.destroy

    respond_to do |format|
      format.html { redirect_to disciplicas_url, notice: "Disciplina was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disciplica
      @disciplica = Disciplina.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def disciplica_params
      params.require(:disciplica).permit(:id, :nome, :anoletivo, :Turma, :_id)
    end
end
