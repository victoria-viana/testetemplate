class ReboquesController < ApplicationController
  before_action :set_reboque, only: [:show, :edit, :update, :destroy]

  # GET /reboques
  # GET /reboques.json
  def index
    @reboques = Reboque.all
  end

  # GET /reboques/1
  # GET /reboques/1.json
  def show
  end

  # GET /reboques/new
  def new
    @reboque = Reboque.new
  end

  # GET /reboques/1/edit
  def edit
  end

  # POST /reboques
  # POST /reboques.json
  def create
    @reboque = Reboque.new(reboque_params)

    respond_to do |format|
      if @reboque.save
        format.html { redirect_to @reboque, notice: 'Reboque was successfully created.' }
        format.json { render :show, status: :created, location: @reboque }
      else
        format.html { render :new }
        format.json { render json: @reboque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reboques/1
  # PATCH/PUT /reboques/1.json
  def update
    respond_to do |format|
      if @reboque.update(reboque_params)
        format.html { redirect_to @reboque, notice: 'Reboque was successfully updated.' }
        format.json { render :show, status: :ok, location: @reboque }
      else
        format.html { render :edit }
        format.json { render json: @reboque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reboques/1
  # DELETE /reboques/1.json
  def destroy
    @reboque.destroy
    respond_to do |format|
      format.html { redirect_to reboques_url, notice: 'Reboque was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reboque
      @reboque = Reboque.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reboque_params
      params.require(:reboque).permit(:veiculo_id, :devolucao, :data_reboque, :endereco_origem, :cidade_origem, :endereco_destino, :cidade_entrega, :cliente_id, :valor, :motorista, :valor_terceiro, :frota_id)
    end
end
