class CreateDepartamentos < ActiveRecord::Migration
  def change
    create_table :departamentos do |t|
      t.string :codigo
      t.string :nombre

      t.timestamps
    end
  end
end
