class Genero < ActiveRecord::Base
  attr_accessible :genero_animal
  
  belongs_to :animal
end
