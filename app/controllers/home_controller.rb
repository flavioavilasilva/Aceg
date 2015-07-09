class HomeController < ApplicationController
  # GET /home
  # GET /home.json
  def index
    
    #Admin.create(:email=>"aceg@aceg.com.br",:password => "aceg@aceg", :password_confirmation => "aceg@aceg")
    
    #Recupera Estado e Cidade
    if session[:estado_usuario_logado].blank? or session[:cidade_usuario_logado].blank?
       redirect_to local_estado_cidade_path
       return
    end
    
    @estado = Estado.where('estado=?', session[:estado_usuario_logado]).first 
     
    unless @estado.blank?
      
    @cidade = Cidade.where('estado_id=? and cidade=?', @estado.id, session[:cidade_usuario_logado]).first 
    
      unless @cidade.blank?
  
        #Consulta os animais do tipo cachorro em prioridade alta
        @cachorro_prioridade = Animal.where("prioridade_adocao_id = ? and tipo_animal_id=? and status_animal_id=? and estado_id=? and cidade_id=?","1","1","1", @estado.id,@cidade.id).limit(5)

        #Consulta os animais do tipo gato em prioridade alta
        @gato_prioridade = Animal.where("prioridade_adocao_id = ? and tipo_animal_id=? and status_animal_id=? and estado_id=? and cidade_id=?","1","2","1", @estado.id,@cidade.id).limit(5)

        #Consulta os animais
        @animais = Animal.where("prioridade_adocao_id = ? and status_animal_id=? and estado_id=? and cidade_id=?","1","1", @estado.id,@cidade.id).limit(10)

        #Consulta os animais perdidos status_animal_id = 4
        @animais_perdidos = Animal.where("prioridade_adocao_id = ? and status_animal_id=?","1","4").limit(4)

        #Consulta os usuários do tipo ong
        @ong = Perfil.where("tipo_perfil_id" =>"2").limit(5)
        
        #Feiras de adoção
        @feiras_adocao =  FeiraAdocao.all
    
      end
    
    end
    
    #Consulta os artigos com maior avaliação
    
    puts("------------------------------------- teste")
    @artigo = Artigo.where('ativo=?',1).limit(5)
    
    #Consulta as indicações de estabelecimentos
    estab = Estabelecimento.new
    @estabelecimento = estab.ordenaestabelecimento()
     
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cachorro_prioridade}
      format.json { render json: @gato_prioridade}
      format.json { render json: @artigo}
      format.json { render json: @ong}
      format.json { render json: @estabelecimento}
      format.js
    end

  end
end
