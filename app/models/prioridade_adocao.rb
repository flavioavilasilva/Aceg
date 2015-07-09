class PrioridadeAdocao < ActiveRecord::Base
  attr_accessible :prioridade_adocao
  
  belongs_to :animal
end
