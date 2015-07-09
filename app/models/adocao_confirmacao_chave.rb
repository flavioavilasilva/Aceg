class AdocaoConfirmacaoChave < ActiveRecord::Base
  attr_accessible :chave_valida, :dias_validade, :chave, :confirmacao_adocao_id, :created_at
  
  #Relacionamento
  belongs_to :confirmacao_adocao
  
  def chave_confirmacao
    
    qtd_dias = 15
    r = Random.new
    numero_aleatorio = r.rand(10000000000...90000000000)
    data_atual = DateTime.now.strftime("%m_%d_%Y") 
    
    self.chave = data_atual.to_s + '_' +numero_aleatorio.to_s
    self.dias_validade = qtd_dias
    self.chave_valida = 1
    
    self.save
    
  end
  
  def inativa_chave
    self.chave_valida = 0
    self.save
  end
  
  def self.valida_chave(chave)
    chave = AdocaoConfirmacaoChave.where('chave=?',chave.to_s).first
    chave.chave_valida?
  end
  
end
