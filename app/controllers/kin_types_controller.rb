class KinTypesController < ApplicationController
  before_action :set_kin_type, only: [:show, :edit, :update, :destroy]
  layout 'home'
  
  # GET /kin_types
  # GET /kin_types.json
  def index
    @kin_types = KinType.all
  end

  # GET /kin_types/1
  # GET /kin_types/1.json
  def show
  end

  # GET /kin_types/new
  def new
    @kin_type = KinType.new
  end

  # GET /kin_types/1/edit
  def edit
  end

  # POST /kin_types
  # POST /kin_types.json
  def create
    @kin_type = KinType.new(kin_type_params)

    respond_to do |format|
      if @kin_type.save
        format.html { redirect_to @kin_type, notice: 'Kin type was successfully created.' }
        format.json { render :show, status: :created, location: @kin_type }
      else
        format.html { render :new }
        format.json { render json: @kin_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kin_types/1
  # PATCH/PUT /kin_types/1.json
  def update
    respond_to do |format|
      if @kin_type.update(kin_type_params)
        format.html { redirect_to @kin_type, notice: 'Kin type was successfully updated.' }
        format.json { render :show, status: :ok, location: @kin_type }
      else
        format.html { render :edit }
        format.json { render json: @kin_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kin_types/1
  # DELETE /kin_types/1.json
  def destroy
    @kin_type.destroy
    respond_to do |format|
      format.html { redirect_to kin_types_url, notice: 'Kin type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kin_type
      @kin_type = KinType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kin_type_params
      params.require(:kin_type).permit(:id, :descripcion, :fecha_creacion)
    end
end
