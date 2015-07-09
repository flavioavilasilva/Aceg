# encoding:UTF-8
class AdocaoAnimal < ActiveRecord::Base
  attr_accessible :adotando_animal_id, :animal_id, :doador_animal_id,:doador_animal_usuario_id,
  :adotando_animal_usuario_id, :confirmacao_adocao_attributes, :cancelamento_adocao_attributes

  #Relacionamento
  belongs_to :adotando_animal
  belongs_to :doador_animal
  belongs_to :animal
  has_one :confirmacao_adocao
  accepts_nested_attributes_for :confirmacao_adocao, :allow_destroy=> true
  has_many :cancelamento_adocao
  accepts_nested_attributes_for :cancelamento_adocao, :allow_destroy=> true
  
  def self.valor_apresentavel_confirmacao_adocao(confirmacao)
    if confirmacao
      "Confirmado"
    else
      "Não Confirmado"
    end
  end
  
  def self.notifica_adocao(adocao_animal)
    UserMailer.notificacao_email_doador(adocao_animal).deliver
    UserMailer.notificacao_email_adotando(adocao_animal).deliver
  end
  
end
