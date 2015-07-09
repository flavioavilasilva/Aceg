class ConfirmacaoAdocao < ActiveRecord::Base
  attr_accessible :adocao_animal_id, :status_confirmacao_adotando_id, :status_confirmacao_doador_id, 
  :adocao_confirmacao_chave_attributes

  #Relacionamento
  belongs_to :adocao_animal
  belongs_to :status_confirmacao_adotando
  belongs_to :status_confirmacao_doador
  has_many :adocao_confirmacao_chave
  
  accepts_nested_attributes_for :adocao_confirmacao_chave, :allow_destroy=> true
  
  def self.chave_confirmacao
    r = Random.new
    numero_aleatorio = r.rand(10000000000...90000000000)
    data_atual = DateTime.now.strftime("%m_%d_%Y") 
    
    data_atual.to_s + '_' +numero_aleatorio.to_s
  end
  
  def self.gera_url_confirmacao_doador(adocao_animal_id)
    confirmacao_adocao = ConfirmacaoAdocao.where('adocao_animal_id=?',adocao_animal_id).first
    adocao_confirmacao_chave = AdocaoConfirmacaoChave.where('confirmacao_adocao_id=?',confirmacao_adocao.id).first
    
    url = 'http://localhost:3000/confirmacao_adocoes/'+ confirmacao_adocao.id.to_s + '/edit'

  end
  
  def self.gera_url_confirmacao_adotando(adocao_animal_id)
    confirmacao_adocao = ConfirmacaoAdocao.where('adocao_animal_id=?',adocao_animal_id).first
    adocao_confirmacao_chave = AdocaoConfirmacaoChave.where('confirmacao_adocao_id=?',confirmacao_adocao.id).first
    
    url = 'http://localhost:3000/confirmacao_adocoes/'+ confirmacao_adocao.id.to_s + '/edit'
    
  end
  
  def gera_confirmacao(adocao_animal)
    self.adocao_animal_id = adocao_animal.id
    self.save
    
    adocao_confirmacao_chave = AdocaoConfirmacaoChave.new
    adocao_confirmacao_chave.chave_confirmacao(self.id)
    
  end
  
  def verifica_confirmacao_adocao
    #Verifica se houve confirmação das duas partes envolvidas no processo
    if self.status_confirmacao_adotando_id== 1 && self.status_confirmacao_doador_id==1
      true
    else
      false
    end
  end
  
  def notifica_usuario_sem_confirmacao
    if self.status_confirmacao_adotando_id.blank?
      UserMailer.notificacao_confirmacao_adocao_adotando(self).deliver
    end
    
    if self.status_confirmacao_doador_id.blank?
      UserMailer.notificacao_confirmacao_adocao_doador(self).deliver
    end
    
  end
  
  def cancela_adocao_animal(adocao_animal)
    
    #inativa chave de confirmação
    adocao_confirmacao_chave = AdocaoConfirmacaoChave.where('confirmacao_adocao_id=? and chave_valida=1',self.id).first
    adocao_confirmacao_chave = adocao_confirmacao_chave.inativa_chave
    
    #Altera status animal para em adoção
    animal = Animal.find(adocao_animal.animal_id)
    animal.altera_status(1)
    
    #Notifica cancelamento a ambas as partes
    
  end
  
end
