class AddAquariumIdToFish < ActiveRecord::Migration[6.0]
  def change
    add_column :fish, :aquarium_id, :integer
  end
end
