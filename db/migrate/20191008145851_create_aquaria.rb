class CreateAquaria < ActiveRecord::Migration[6.0]
  def change
    create_table :aquaria do |t|
      t.integer :size
      t.boolean :water
      t.string :owner
      t.timestamps
    end
  end
end
