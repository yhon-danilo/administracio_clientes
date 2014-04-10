class PersonasController < ApplicationController
	before_action :set_persona, only: [:edit, :update, :show, :destroy]
	def index
		@personas= Persona.all
	end

	def home
		
	end

	def new
		@persona = Persona.new
	end

	def edit
		#@persona = Persona.find(params[:id])

	end

	def create
		@persona = Persona.new(persona_params)
		
		if @persona.save 
		  redirect_to @persona
		else
		  render "new"
		end

	end


	def update
		#	@persona = Persona.find(params[:id])
    		if @persona.update(persona_params)
        		 redirect_to @persona, notice: 'Cliente was successfully updated.' 
        		
    		else
        		 render action: 'edit' 
			end
		
	end

	def destroy
		#@persona = Persona.find (params[:id])
		@persona.destroy
		redirect_to personas_path
	end

	def show
		#@persona = Persona.find(params[:id])
	end

	private
	def persona_params
      params.require(:persona).permit(:nombre, :apellido, :edad, :telefono)
    end

    def set_persona
    	@persona = Persona.find (params[:id])
    end
end