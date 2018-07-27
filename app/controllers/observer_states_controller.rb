class ObserverStatesController < ApplicationController
  before_action :set_observer_state, only: [:show, :edit, :update, :destroy]
  layout 'home'

  # GET /observer_states
  # GET /observer_states.json
  def index
    @observer_states = ObserverState.all
  end

  # GET /observer_states/1
  # GET /observer_states/1.json
  def show
  end

  # GET /observer_states/new
  def new
    @observer_state = ObserverState.new
  end

  # GET /observer_states/1/edit
  def edit
  end

  # POST /observer_states
  # POST /observer_states.json
  def create
    @observer_state = ObserverState.new(observer_state_params)

    respond_to do |format|
      if @observer_state.save
        format.html { redirect_to @observer_state, notice: 'Observer state was successfully created.' }
        format.json { render :show, status: :created, location: @observer_state }
      else
        format.html { render :new }
        format.json { render json: @observer_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /observer_states/1
  # PATCH/PUT /observer_states/1.json
  def update
    respond_to do |format|
      if @observer_state.update(observer_state_params)
        format.html { redirect_to @observer_state, notice: 'Observer state was successfully updated.' }
        format.json { render :show, status: :ok, location: @observer_state }
      else
        format.html { render :edit }
        format.json { render json: @observer_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /observer_states/1
  # DELETE /observer_states/1.json
  def destroy
    @observer_state.destroy
    respond_to do |format|
      format.html { redirect_to observer_states_url, notice: 'Observer state was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_observer_state
      @observer_state = ObserverState.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def observer_state_params
      params.require(:observer_state).permit(:id, :descripcion, :fecha_creacion)
    end
end
