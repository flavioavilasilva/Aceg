class Cidade < ActiveRecord::Base
  attr_accessible :cidade, :estado_id, :sigla
  
  #Relacionamento
  has_many :perfil
  has_many :animal
  belongs_to :estado
end
