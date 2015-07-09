class Estado < ActiveRecord::Base
  attr_accessible :estado, :sigla
  
  #Relacionamento
  has_many :perfil
  has_many :cidade
  has_many :animal
  has_many :endereco_perfil
  has_many :endereco_oferta_voluntariado
  has_many :endereco_feira_adocao
  
end
