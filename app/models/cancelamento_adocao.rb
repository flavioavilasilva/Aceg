class CancelamentoAdocao < ActiveRecord::Base
  attr_accessible :adocao_animal_id, :doador_animal_id,:adotando_animal_id,:cancelamento_solicitante_id, :motivo_cancelamento, :motivo_cancelamento_id
  
  belongs_to :adocao_animal
  
  def self.cancela_adocao_animal(adocao_animal)

    #Altera status animal para em adoção
    animal = Animal.find(adocao_animal.animal_id)
    animal.altera_status(1)
    
    #Notifica cancelamento a ambas as partes
    
  end
  
end
