class GaleriaAnimal < ActiveRecord::Base
  attr_accessible :animal_id, :descricao, :foto
  
  belongs_to :animal
  
  has_attached_file :foto, styles:
    { medium: "300x300>", thumb: "100x100>" }
end
