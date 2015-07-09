class DoadorAnimal < Usuario
  attr_accessible :status_doador_id
  
  
  #relacionamento
  has_many :animal
  belongs_to :status_doador
end
