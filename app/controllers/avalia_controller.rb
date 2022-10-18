class AvaliaController < ApplicationController
  before_action :set_avalium, only: %i[ show edit update destroy ]

  # GET /avalia or /avalia.json
  def index
    @avalia = Avalium.all
  end

  # GET /avalia/1 or /avalia/1.json
  def show
  end

  # GET /avalia/new
  def new
    @avalium = Avalium.new
  end

  # GET /avalia/1/edit
  def edit
  end

  # POST /avalia or /avalia.json
  def create
    @avalium = Avalium.new(avalium_params)

    respond_to do |format|
      if @avalium.save
        format.html { redirect_to avalium_url(@avalium), notice: "Avalium was successfully created." }
        format.json { render :show, status: :created, location: @avalium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @avalium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avalia/1 or /avalia/1.json
  def update
    respond_to do |format|
      if @avalium.update(avalium_params)
        format.html { redirect_to avalium_url(@avalium), notice: "Avalium was successfully updated." }
        format.json { render :show, status: :ok, location: @avalium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @avalium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avalia/1 or /avalia/1.json
  def destroy
    @avalium.destroy

    respond_to do |format|
      format.html { redirect_to avalia_url, notice: "Avalium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avalium
      @avalium = Avalium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def avalium_params
      params.require(:avalium).permit(:id, :pontos, :observacao, :Atividade, :_id, :Aluno, :_id)
    end
end
