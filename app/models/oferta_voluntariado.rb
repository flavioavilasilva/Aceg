class OfertaVoluntariado < ActiveRecord::Base
  
  attr_accessible :descricao, :titulo, :usuario_id, :vigencia_oferta_id, :endereco_oferta_voluntariado_attributes
  
  belongs_to :vigencia_oferta
  belongs_to :usuario
  has_many :endereco_oferta_voluntariado
  accepts_nested_attributes_for :endereco_oferta_voluntariado, :allow_destroy=> true
  has_many :oferta_voluntariado_candidato
  has_many :usuario
  
end
