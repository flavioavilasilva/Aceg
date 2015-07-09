class AdotandoAnimal < Usuario
  attr_accessible :status_adotando_id
  
  #relacionamento
  has_many :animal
  belongs_to :status_adotando
  
end
