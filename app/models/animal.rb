class Animal < ActiveRecord::Base
  attr_accessible :cidade_id,:raca_id, :descricao_animal, :doador_animal_id, :estado_id, :genero_id, :idade_id, :nome, :numero_rua, 
  :prioridade_adocao_id, :rua, :status_animal_id, 
  :tipo_animal_id,:cep,:foto, :galeria_animal_attributes

    #validates
    validates_presence_of :cidade_id, message: "deve ser preenchido"
    validates_presence_of :raca_id, message: "deve ser preenchido"
    validates_presence_of :estado_id, message: "deve ser preenchido"
    validates_presence_of :foto, message: "deve ser preenchido"
    validates_presence_of :nome, message: "deve ser preenchido"
    validates_presence_of :numero_rua, message: "deve ser preenchido"
    validates_presence_of :cep, message: "deve ser preenchido"
    validates_presence_of :rua, message: "deve ser preenchido"
    validates_presence_of :tipo_animal_id, message: "deve ser preenchido"
    validates_presence_of :descricao_animal, message: "deve ser preenchido"
    #
    
    #relacionamento
    belongs_to :prioridade_adocao
    belongs_to :tipo_animal
    has_one :raca
    belongs_to :cidade
    belongs_to :estado
    belongs_to :doador_animal
    has_one :status_animal
    has_one :genero
    has_one :idade
    has_many :galeria_animal
    accepts_nested_attributes_for :galeria_animal, :allow_destroy=> true
    
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
    
    def self.count_animais_to_adocao
      contagem = Animal.where("status_animal_id=?",1).count
    end
    
    def self.count_animais_achados
      contagem = Animal.where("status_animal_id=?",5).count
    end
    
    def self.count_animais_perdidos
      contagem = Animal.where("status_animal_id=?",4).count
    end
    
    def altera_status(status_animal_id)
      self.status_animal_id = status_animal_id
      self.save
    end
    
end

