class Indicacao < ActiveRecord::Base
  attr_accessible :comentario, :estabelecimento_id, :nota, :usuario_id

  belongs_to :estabelecimento
end
