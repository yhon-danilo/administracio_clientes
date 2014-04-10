class Persona < ActiveRecord::Base
	has_many :propiedades #el propiedades es el otro modelo en plural ya que una persona puede tener muchas propiedades
	validates :nombre, :presence => true,
	 					:uniqueness => true, 
	 					:length => {maximum: 10, minimum: 3} 
	validates :apellido, :presence => true
	validates :edad, :presence => true, :numericality => true
	validates :telefono, :presence => true
end