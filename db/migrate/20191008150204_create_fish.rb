class CreateFish < ActiveRecord::Migration[6.0]
  def change
    create_table :fish do |t|
      t.string :kind
      t.integer :quantity
      t.boolean :alive

      t.timestamps
    end
  end
end
