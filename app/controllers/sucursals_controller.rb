class SucursalsController < ApplicationController
  before_action :set_sucursal, only: [:show, :edit, :update, :destroy]

  # GET /sucursals
  # GET /sucursals.json
  def index
    @sucursals = Sucursal.all
  end

  # GET /sucursals/1
  # GET /sucursals/1.json
  def show
  end

  # GET /sucursals/new
  def new
    @sucursal = Sucursal.new
  end

  # GET /sucursals/1/edit
  def edit
  end

  # POST /sucursals
  # POST /sucursals.json
  def create
    params[:usuario_id] = session[:user_id]
    @sucursal = Sucursal.new(sucursal_params)
    @sucursal.usuario_id = session[:user_id]

    respond_to do |format|
      if @sucursal.save
        format.html { redirect_to @sucursal, notice: 'Sucursal ha sido creada.' }
        format.json { render :show, status: :created, location: @sucursal }
      else
        format.js { render 'sucursals/validator' }
        format.html { render :new }
        format.json { render json: @sucursal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sucursals/1
  # PATCH/PUT /sucursals/1.json
  def update
    respond_to do |format|
      if @sucursal.update(sucursal_params)
        format.html { redirect_to @sucursal, notice: 'Sucursal ha sido actualizada.' }
        format.json { render :show, status: :ok, location: @sucursal }
      else
        format.js { render 'sucursals/validator' }
        format.html { render :edit }
        format.json { render json: @sucursal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sucursals/1
  # DELETE /sucursals/1.json
  def destroy
    @sucursal.destroy
    respond_to do |format|
      format.html { redirect_to usuarios_path, notice: 'Sucursal ha sido eliminada.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sucursal
      @sucursal = Sucursal.find(params[:id])
      @sucursal.usuario_id = session[:user_id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sucursal_params
      params.require(:sucursal).permit(:nombre, :calle, :colonia, :numero_exterior, :numero_interior, :codigo_postal, :ciudad, :pais, :usuario_id)
      
    end
end
