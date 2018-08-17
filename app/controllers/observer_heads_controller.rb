class ObserverHeadsController < ApplicationController
  before_action :set_observer_head, only: [:show, :edit, :update, :destroy]
  
  layout 'home'

  # GET /observer_heads
  # GET /observer_heads.json
  def index
    @observer_heads = ObserverHead.all
  end

  # GET /observer_heads/1
  # GET /observer_heads/1.json
  def show
  end

  # GET /observer_heads/new
  def new
    @observer_head = ObserverHead.new
  end

  # GET /observer_heads/1/edit
  def edit
  end

  # POST /observer_heads
  # POST /observer_heads.json
  def create
    @observer_head = ObserverHead.new(observer_head_params)

    respond_to do |format|
      if @observer_head.save
        format.html { redirect_to @observer_head, notice: 'Observer head was successfully created.' }
        format.json { render :show, status: :created, location: @observer_head }
      else
        format.html { render :new }
        format.json { render json: @observer_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /observer_heads/1
  # PATCH/PUT /observer_heads/1.json
  def update
    respond_to do |format|
      if @observer_head.update(observer_head_params)
        format.html { redirect_to @observer_head, notice: 'Observer head was successfully updated.' }
        format.json { render :show, status: :ok, location: @observer_head }
      else
        format.html { render :edit }
        format.json { render json: @observer_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /observer_heads/1
  # DELETE /observer_heads/1.json
  def destroy
    @observer_head.destroy
    respond_to do |format|
      format.html { redirect_to observer_heads_url, notice: 'Observer head was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_observer_head
      @observer_head = ObserverHead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def observer_head_params
      params.require(:observer_head).permit(:id, :fecha_creacion, :estudiante_id, :usuario_id, :titulo, :estado)
    end
end
