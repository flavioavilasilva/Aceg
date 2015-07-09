class EnderecoFeiraAdocao < ActiveRecord::Base
  attr_accessible :cep, :cidade_id, :estado_id, :feira_adocao_id, :numero, :rua
  
  belongs_to :feira_adocao
  belongs_to :estado
  belongs_to :cidade
end
