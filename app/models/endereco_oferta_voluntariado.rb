class EnderecoOfertaVoluntariado < ActiveRecord::Base
  attr_accessible :cep, :cidade_id, :estado_id, :numero, :oferta_voluntariado_id, :rua
  
  belongs_to :oferta_voluntariado
end
