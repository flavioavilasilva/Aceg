class TipoGalerium < ActiveRecord::Base
  attr_accessible :tipo

   #relacionamento
	has_many :galerium
   #
end
