class Artigo < ActiveRecord::Base
  
  attr_accessible :artigo, :autor, :data_publicacao, :fonte, :ativo, :titulo,:foto
    
    has_many :ComentarioArtigo
    
    #validates
    validates :titulo, :presence => true, :length => { :minimum => 10 }
    validates :artigo, :presence => true
    #
    
    has_attached_file :foto, styles:
    { medium: "300x300>", thumb: "100x100>" }
    
    include Tire::Model::Search
    include Tire::Model::Callbacks
    
    
    def self.search(params)
      tire.search(load: true) do
        query { string params[:query], default_operator: "AND" } if params[:query].present?
        #filter :range, published_at: {lte: Time.zone.now}
      end
    end
    
    
    
end
