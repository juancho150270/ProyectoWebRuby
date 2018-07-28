class ObserverDetailsController < ApplicationController
  before_action :set_observer_detail, only: [:show, :edit, :update, :destroy]
  layout 'home'

  # GET /observer_details
  # GET /observer_details.json
  def index
    @observer_details = ObserverDetail.all
  end

  # GET /observer_details/1
  # GET /observer_details/1.json
  def show
  end

  # GET /observer_details/new
  def new
    @observer_detail = ObserverDetail.new
  end

  # GET /observer_details/1/edit
  def edit
  end

  # POST /observer_details
  # POST /observer_details.json
  def create
    @observer_detail = ObserverDetail.new(observer_detail_params)

    respond_to do |format|
      if @observer_detail.save
        format.html { redirect_to @observer_detail, notice: 'Observer detail was successfully created.' }
        format.json { render :show, status: :created, location: @observer_detail }
      else
        format.html { render :new }
        format.json { render json: @observer_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /observer_details/1
  # PATCH/PUT /observer_details/1.json
  def update
    respond_to do |format|
      if @observer_detail.update(observer_detail_params)
        format.html { redirect_to @observer_detail, notice: 'Observer detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @observer_detail }
      else
        format.html { render :edit }
        format.json { render json: @observer_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /observer_details/1
  # DELETE /observer_details/1.json
  def destroy
    @observer_detail.destroy
    respond_to do |format|
      format.html { redirect_to observer_details_url, notice: 'Observer detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_observer_detail
      @observer_detail = ObserverDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def observer_detail_params
      params.require(:observer_detail).permit(:id, :fecha_creacion, :fecha_modificacion, :tipo_seguimiento, :fecha_sucesos, :observacion, :compromisos, :obs_encabezado_id)
    end
end
