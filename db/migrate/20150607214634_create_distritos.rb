class CreateDistritos < ActiveRecord::Migration
  def change
    create_table :distritos do |t|
      t.string :codigo
      t.string :nombre

      t.timestamps
    end
  end
end
