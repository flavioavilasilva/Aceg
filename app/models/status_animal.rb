class StatusAnimal < ActiveRecord::Base
  attr_accessible :status_animal
  
  belongs_to :animal
end
