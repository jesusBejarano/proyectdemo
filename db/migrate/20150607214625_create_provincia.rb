class CreateProvincia < ActiveRecord::Migration
  def change
    create_table :provincia do |t|
      t.string :codigo
      t.string :nombre

      t.timestamps
    end
  end
end
