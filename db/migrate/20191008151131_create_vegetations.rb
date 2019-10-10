class CreateVegetations < ActiveRecord::Migration[6.0]
  def change
    create_table :vegetations do |t|
      t.string :color
      t.boolean :real

      t.timestamps
    end
  end
end
