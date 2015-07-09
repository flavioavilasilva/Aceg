class Perfil < ActiveRecord::Base
  belongs_to :usuario
  
  has_one :endereco_perfil
  accepts_nested_attributes_for :endereco_perfil, :allow_destroy=> true
  
  has_one :tipo_perfil
  attr_accessible :nome, :cpf, :data_nascimento, :descricao , :tipo_perfil_id, :telefone,
  :endereco_perfil_attributes, :foto
  
  has_attached_file :foto, styles:
  { medium: "300x300>", thumb: "100x100>" }
  
end
