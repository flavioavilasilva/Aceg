class TipoAnimal < ActiveRecord::Base
  attr_accessible :tipo_animal
  
  has_one :raca
end
