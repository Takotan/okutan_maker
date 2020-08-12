class PmovesController < ApplicationController
  before_action :set_pmove, only: [:show, :edit, :update, :destroy]

  # GET /pmoves
  # GET /pmoves.json
  def index
    @pmoves = Pmove.all
  end

  # GET /pmoves/1
  # GET /pmoves/1.json
  def show
  end

  # GET /pmoves/new
  def new
    @pmove = Pmove.new
  end

  # GET /pmoves/1/edit
  def edit
  end

  # POST /pmoves
  # POST /pmoves.json
  def create
    @pmove = Pmove.new(pmove_params)

    respond_to do |format|
      if @pmove.save
        format.html { redirect_to @pmove, notice: 'Pmove was successfully created.' }
        format.json { render :show, status: :created, location: @pmove }
      else
        format.html { render :new }
        format.json { render json: @pmove.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pmoves/1
  # PATCH/PUT /pmoves/1.json
  def update
    respond_to do |format|
      if @pmove.update(pmove_params)
        format.html { redirect_to @pmove, notice: 'Pmove was successfully updated.' }
        format.json { render :show, status: :ok, location: @pmove }
      else
        format.html { render :edit }
        format.json { render json: @pmove.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pmoves/1
  # DELETE /pmoves/1.json
  def destroy
    @pmove.destroy
    respond_to do |format|
      format.html { redirect_to pmoves_url, notice: 'Pmove was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pmove
      @pmove = Pmove.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pmove_params
      params.require(:pmove).permit(:pokemon_id, :move_id)
    end
end
