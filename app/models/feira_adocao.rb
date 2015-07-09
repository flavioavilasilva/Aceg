class FeiraAdocao < ActiveRecord::Base
  attr_accessible :descricao, :endereco_feira_adocao_id, :fim_feira, :inicio_feira, :nome, :usuario_id, :endereco_feira_adocao_attributes
  
  has_many :endereco_feira_adocao
  accepts_nested_attributes_for :endereco_feira_adocao, :allow_destroy=> true
end
