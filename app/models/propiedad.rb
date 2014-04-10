class Propiedad < ActiveRecord::Base
  belongs_to :persona #pertenece a una sola persona
end
