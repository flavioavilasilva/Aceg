class Raca < ActiveRecord::Base
  attr_accessible :raca,:tipo_animal_id, :porte_animal_id

  belongs_to :tipo_animal
  belongs_to :porte_animal
end
