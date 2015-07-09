class TipoPerfil < ActiveRecord::Base
  belongs_to :perfil
  attr_accessible :tipo_perfil
end
