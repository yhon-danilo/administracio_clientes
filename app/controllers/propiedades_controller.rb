class PropiedadesController < ApplicationController
  before_action :set_propiedad, only: [:show, :edit, :update, :destroy]

  # GET /propiedades
  # GET /propiedades.json
  def index
    #@propiedades = Propiedad.all
    @persona = Persona.find(params[:persona_id])
    @propiedades = @persona.propiedades
  end

  # GET /propiedades/1
  # GET /propiedades/1.json
  def show

  end

  # GET /propiedades/new
  def new
    @persona = Persona.find(params[:persona_id])
    @propiedad = @persona.propiedades.build #en el campo persona_id pone el de la persona

  end

  # GET /propiedades/1/edit
  def edit
  end

  # POST /propiedades
  # POST /propiedades.json
  def create
    @persona = Persona.find(params[:persona_id])
    @propiedad = @persona.propiedades.build(propiedad_params)
    

    respond_to do |format|
      if @propiedad.save
        format.html { redirect_to [@persona, @propiedad], notice: 'Propiedad was successfully created.' }
        format.json { render action: 'show', status: :created, location: @propiedad }
      else
        format.html { render action: 'new' }
        format.json { render json: @propiedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /propiedades/1
  # PATCH/PUT /propiedades/1.json
  def update
    respond_to do |format|
      if @propiedad.update(propiedad_params)
        format.html { redirect_to [@persona, @propiedad], notice: 'Propiedad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @propiedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /propiedades/1
  # DELETE /propiedades/1.json
  def destroy
    @propiedad.destroy
    respond_to do |format|
      format.html { redirect_to personas_propiedades_url(@persona)}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_propiedad
      @persona = Persona.find(params[:persona_id])
      @propiedad = @persona.propiedades.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def propiedad_params
      params.require(:propiedad).permit(:nombre, :direccion, :valor, :estrato, :persona_id)
    end
end
