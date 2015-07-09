class EnderecoPerfil < ActiveRecord::Base
  belongs_to :perfil
  belongs_to :cidade
  belongs_to :estado
  attr_accessible :cep, :cidade_id, :estado_id, :numero, :rua, :perfil_id
end
