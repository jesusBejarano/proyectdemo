class CreateIngredientePlatos < ActiveRecord::Migration
  def change
    create_table :ingrediente_platos do |t|
      t.references :plato, index: true
      t.references :ingrediente, index: true
      t.decimal :cantidad

      t.timestamps
    end
  end
end
