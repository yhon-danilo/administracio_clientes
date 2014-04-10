class CreatePersona < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :apellido
      t.string :edad
      t.string :telefono

      t.timestamps
    end
  end
end
