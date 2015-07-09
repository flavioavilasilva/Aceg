class OfertaVoluntariadoCandidato < ActiveRecord::Base
  attr_accessible :oferta_voluntariado_id, :status_cadidatura, :usuario_id
  
  belongs_to :oferta_voluntariado
  belongs_to :usuario
end
