class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :edad
      t.string :apellidos
      t.string :direccion

      t.timestamps
    end
  end
end
