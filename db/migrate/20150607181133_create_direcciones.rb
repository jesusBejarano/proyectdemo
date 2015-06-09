class CreateDirecciones < ActiveRecord::Migration
  def change
    create_table :direcciones do |t|
      t.references :user, index: true
      t.string :nombre
      t.references :ubigeo, index: true

      t.timestamps
    end
  end
end
