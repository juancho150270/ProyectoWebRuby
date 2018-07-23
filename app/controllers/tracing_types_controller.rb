class TracingTypesController < ApplicationController
  before_action :set_tracing_type, only: [:show, :edit, :update, :destroy]
  layout 'home'

  # GET /tracing_types
  # GET /tracing_types.json
  def index
    @tracing_types = TracingType.all
  end

  # GET /tracing_types/1
  # GET /tracing_types/1.json
  def show
  end

  # GET /tracing_types/new
  def new
    @tracing_type = TracingType.new
  end

  # GET /tracing_types/1/edit
  def edit
  end

  # POST /tracing_types
  # POST /tracing_types.json
  def create
    @tracing_type = TracingType.new(tracing_type_params)

    respond_to do |format|
      if @tracing_type.save
        format.html { redirect_to @tracing_type, notice: 'Tracing type was successfully created.' }
        format.json { render :show, status: :created, location: @tracing_type }
      else
        format.html { render :new }
        format.json { render json: @tracing_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tracing_types/1
  # PATCH/PUT /tracing_types/1.json
  def update
    respond_to do |format|
      if @tracing_type.update(tracing_type_params)
        format.html { redirect_to @tracing_type, notice: 'Tracing type was successfully updated.' }
        format.json { render :show, status: :ok, location: @tracing_type }
      else
        format.html { render :edit }
        format.json { render json: @tracing_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tracing_types/1
  # DELETE /tracing_types/1.json
  def destroy
    @tracing_type.destroy
    respond_to do |format|
      format.html { redirect_to tracing_types_url, notice: 'Tracing type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tracing_type
      @tracing_type = TracingType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tracing_type_params
      params.require(:tracing_type).permit(:id, :descripcion, :fecha_creacion)
    end
end
