class EstoqueReboquesController < ApplicationController
  before_action :set_estoque_reboque, only: [:show, :edit, :update, :destroy]

  # GET /estoque_reboques
  # GET /estoque_reboques.json
  def index
    @estoque_reboques = EstoqueReboque.all
  end

  # GET /estoque_reboques/1
  # GET /estoque_reboques/1.json
  def show
  end

  # GET /estoque_reboques/new
  def new
    @estoque_reboque = EstoqueReboque.new
  end

  # GET /estoque_reboques/1/edit
  def edit
  end

  # POST /estoque_reboques
  # POST /estoque_reboques.json
  def create
    @estoque_reboque = EstoqueReboque.new(estoque_reboque_params)

    respond_to do |format|
      if @estoque_reboque.save
        format.html { redirect_to @estoque_reboque, notice: 'Estoque reboque was successfully created.' }
        format.json { render :show, status: :created, location: @estoque_reboque }
      else
        format.html { render :new }
        format.json { render json: @estoque_reboque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estoque_reboques/1
  # PATCH/PUT /estoque_reboques/1.json
  def update
    respond_to do |format|
      if @estoque_reboque.update(estoque_reboque_params)
        format.html { redirect_to @estoque_reboque, notice: 'Estoque reboque was successfully updated.' }
        format.json { render :show, status: :ok, location: @estoque_reboque }
      else
        format.html { render :edit }
        format.json { render json: @estoque_reboque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estoque_reboques/1
  # DELETE /estoque_reboques/1.json
  def destroy
    @estoque_reboque.destroy
    respond_to do |format|
      format.html { redirect_to estoque_reboques_url, notice: 'Estoque reboque was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estoque_reboque
      @estoque_reboque = EstoqueReboque.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estoque_reboque_params
      params.require(:estoque_reboque).permit(:estoque_id, :reboque_id)
    end
end
