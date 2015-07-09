class PorteAnimal < ActiveRecord::Base
  attr_accessible :porte_animal
  
  #belongs_to :animal
  has_many :raca
end
