class ComentarioArtigo < ActiveRecord::Base
  belongs_to :artigo
  attr_accessible :autor, :conteudo, :artigo_id
end
