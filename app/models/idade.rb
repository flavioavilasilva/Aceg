class Idade < ActiveRecord::Base
  attr_accessible :idade_animal
  
  belongs_to :animal
end
