class Estabelecimento < ActiveRecord::Base
  attr_accessible :bairro_id, :cidade_id, :descricao_servico, :estabelecimento, :estado_id, :numero_rua, :rua, :telefone, :tipo_servico_id,:foto
  
  has_attached_file :foto, styles:
      { medium: "300x300>", thumb: "100x100>" }
      
  has_many :indicacoes
  
  def notageral()
    
    notageral = 0
    indics = Indicacao.where("estabelecimento_id=?",id)
    
    indics.each do |indics| 
      notageral = notageral + indics.nota
    end
    
    notageral / indics.count
    
  end
  
  def ordenaestabelecimento()
    
    Estabelecimento.joins(:indicacoes).group("id","estabelecimento","descricao_servico").order("sum(nota) ASC")

  end
  
end
