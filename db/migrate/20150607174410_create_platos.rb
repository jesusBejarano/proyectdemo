class CreatePlatos < ActiveRecord::Migration
  def change
    create_table :platos do |t|
      t.string :nombre
      t.decimal :precio
      t.references :TipoPlato, index: true

      t.timestamps
    end
  end
end
