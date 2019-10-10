class Aquarium < ApplicationRecord
   has_many :fishes
   has_many :artifacts
   has_many :vegetations
   
   
end
