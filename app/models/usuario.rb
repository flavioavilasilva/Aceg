class Usuario < ActiveRecord::Base
  has_one :doador_animal
  has_one :adotando_animal
  has_one :perfil
  accepts_nested_attributes_for :perfil, :allow_destroy=> true
  has_many :oferta_voluntariado
  has_many :oferta_voluntariado_candidato
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :provider, :uid,
  :perfil_attributes
  # attr_accessible :title, :body
  
  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = Usuario.where(:provider => auth.provider, :uid => auth.uid).first
    unless user
      user = Usuario.new(provider:auth.provider,
                           uid:auth.uid,
                           email:auth.info.email,
                           password:Devise.friendly_token[0,20])
      
      #Cria o perfil de usuário com dados incompletos
      user.build_perfil
      user.perfil.nome = auth.extra.raw_info.name
      
      #Cria a entidade de endereço de localizacão do usuário
      user.perfil.endereco_perfil = EnderecoPerfil.new
      
      #Salva o usuário a partir de dados do facebook com as informações que conseguiu
      user.save

    end
    user
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

end
