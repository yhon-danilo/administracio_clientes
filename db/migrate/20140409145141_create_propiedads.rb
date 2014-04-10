class CreatePropiedads < ActiveRecord::Migration
  def change
    create_table :propiedades do |t|
      t.string :nombre
      t.string :direccion
      t.decimal :valor
      t.integer :estrato
      t.references :persona, index: true

      t.timestamps
    end
  end
end
