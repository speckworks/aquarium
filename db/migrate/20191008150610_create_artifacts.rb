class CreateArtifacts < ActiveRecord::Migration[6.0]
  def change
    create_table :artifacts do |t|
      t.string :name
      t.integer :size

      t.timestamps
    end
  end
end
