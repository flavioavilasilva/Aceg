class VigenciaOferta < ActiveRecord::Base
  attr_accessible :vigencia
  
  belongs_to :oferta_voluntariado
end
