class Preferencium < ActiveRecord::Base
  attr_accessible :cidade, :cor, :estado, :foto, :peso, :porte, :prioridade_adocao, :tipo, :tipo_doador

   #relacionamento
        belongs_to :adotando
    #

end
