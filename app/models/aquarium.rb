class Aquarium < ApplicationRecord
   has_many :fishes, dependent: :destroy
   has_many :artifacts
   has_many :vegetations
end
