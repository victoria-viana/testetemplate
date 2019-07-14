class FrotaController < ApplicationController
  before_action :set_frotum, only: [:show, :edit, :update, :destroy]

  # GET /frota
  # GET /frota.json
  def index
    @frota = Frotum.all
  end

  # GET /frota/1
  # GET /frota/1.json
  def show
  end

  # GET /frota/new
  def new
    @frotum = Frotum.new
  end

  # GET /frota/1/edit
  def edit
  end

  # POST /frota
  # POST /frota.json
  def create
    @frotum = Frotum.new(frotum_params)

    respond_to do |format|
      if @frotum.save
        format.html { redirect_to @frotum, notice: 'Frotum was successfully created.' }
        format.json { render :show, status: :created, location: @frotum }
      else
        format.html { render :new }
        format.json { render json: @frotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frota/1
  # PATCH/PUT /frota/1.json
  def update
    respond_to do |format|
      if @frotum.update(frotum_params)
        format.html { redirect_to @frotum, notice: 'Frotum was successfully updated.' }
        format.json { render :show, status: :ok, location: @frotum }
      else
        format.html { render :edit }
        format.json { render json: @frotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frota/1
  # DELETE /frota/1.json
  def destroy
    @frotum.destroy
    respond_to do |format|
      format.html { redirect_to frota_url, notice: 'Frotum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frotum
      @frotum = Frotum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def frotum_params
      params.require(:frotum).permit(:modelo, :placa, :renavan, :tipo_entrada_id, :interno)
    end
end
