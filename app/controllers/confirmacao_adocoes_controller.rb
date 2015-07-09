# encoding:UTF-8
class ConfirmacaoAdocoesController < ApplicationController
  
  load_and_authorize_resource
  before_filter :authenticate_usuario!
  
  # GET /confirmacao_adocaos
  # GET /confirmacao_adocaos.json
  def index
    
    #Confirmações como Doador
    adocao_animal_doador = AdocaoAnimal.where('doador_animal_id=?',current_usuario.id) unless current_usuario.id?
    
    arr_doador_animal_id=[]
    
    adocao_animal_doador.each do|d|
      arr_doador_animal_id << d.id
    end
    
    @confirmacao_adocao_doador = ConfirmacaoAdocao.where('adocao_animal_id in(?)',arr_doador_animal_id)
    
    #Confirmações como Adotando
    adocao_animal_adotando = AdocaoAnimal.where('adotando_animal_id=?',current_usuario.id) unless current_usuario.nil? 
        
    arr_adotando_animal_id=[]
    
    adocao_animal_adotando.each do |a|
      arr_adotando_animal_id << a.id 
    end
    
    @confirmacao_adocao_adotando = ConfirmacaoAdocao.where("adocao_animal_id in (?)",arr_adotando_animal_id)
    puts @confirmacao_adocao_adotando.size

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @confirmacao_adocao }
      format.json { render json: @confirmacao_adocao_adotando }
    end
  end

  # GET /confirmacao_adocaos/1
  # GET /confirmacao_adocaos/1.json
  def show
    @confirmacao_adocao = ConfirmacaoAdocao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @confirmacao_adocao }
    end
  end

  # GET /confirmacao_adocaos/new
  # GET /confirmacao_adocaos/new.json
  def new
    @confirmacao_adocao = ConfirmacaoAdocao.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @confirmacao_adocao }
    end
  end

  # GET /confirmacao_adocaos/1/edit
  def edit
    
    #Verifica em qual contesto de confirmacão o usuário se enquadra
    @confirmacao_adocao = ConfirmacaoAdocao.find(params[:id])
    
    @contesto_doador = AdocaoAnimal.where('doador_animal_id=? and id=?',current_usuario.id,@confirmacao_adocao.id)
    @contesto_adotando = AdocaoAnimal.where('adotando_animal_id=? and id=?',current_usuario.id,@confirmacao_adocao.id)
    
    #Busca por chave
    adocao_confirmacao_chave = AdocaoConfirmacaoChave.where('confirmacao_adocao_id=? and chave_valida=1',@confirmacao_adocao.id).first
    
    #Verifica a validade da chave
     if adocao_confirmacao_chave.blank? or AdocaoConfirmacaoChave.valida_chave(adocao_confirmacao_chave.chave)==false
       redirect_to @confirmacao_adocao, notice: 'Não existem confirmações de adocão disponível para esse animal'
     end
     
  end

  # POST /confirmacao_adocaos
  # POST /confirmacao_adocaos.json
  def create
    @confirmacao_adocao = ConfirmacaoAdocao.new(params[:confirmacao_adocao])

    respond_to do |format|
      if @confirmacao_adocao.save
        format.html { redirect_to @confirmacao_adocao, notice: 'Confirmacao adocao was successfully created.' }
        format.json { render json: @confirmacao_adocao, status: :created, location: @confirmacao_adocao }
      else
        format.html { render action: "new" }
        format.json { render json: @confirmacao_adocao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /confirmacao_adocaos/1
  # PUT /confirmacao_adocaos/1.json
  def update
    @confirmacao_adocao = ConfirmacaoAdocao.find(params[:id])

    respond_to do |format|
      
      #Verifica se a chave existe ou é valida
      adocao_confirmacao_chave = AdocaoConfirmacaoChave.where('confirmacao_adocao_id=? and chave_valida=1',@confirmacao_adocao.id).first
      if adocao_confirmacao_chave.blank? or AdocaoConfirmacaoChave.valida_chave(adocao_confirmacao_chave.chave)==false
        redirect_to @confirmacao_adocao, notice: 'Não existem confirmações de adocão disponível para esse animal'
      end
      
      #Inicia o processo de confirmações após validacão de chave
      if @confirmacao_adocao.update_attributes(params[:confirmacao_adocao])
        
        #Cancela a adocão caso a resposta de algum dos envolvidos não seja positiva
        if @confirmacao_adocao.status_confirmacao_doador_id==2 or @confirmacao_adocao.status_confirmacao_adotando_id==2
          adocao_animal = AdocaoAnimal.find(@confirmacao_adocao.adocao_animal_id)
          CancelamentoAdocao.cancela_adocao_animal(adocao_animal)
        end
        
        #Notifica parte que ainda não fez sua confirmação
        @confirmacao_adocao.notifica_usuario_sem_confirmacao
        
        #Verifica confirmação de ambas as partes envolvidas e caso confirmadas altera status do animal para adotado
        if @confirmacao_adocao.verifica_confirmacao_adocao
          #Animal passa para status de adotado
          animal = Animal.find(@confirmacao_adocao.adocao_animal.animal_id)
          animal.altera_status(3) #3 = adotado
          
          #Inativa a chave utilizada
          adocao_confirmacao_chave = adocao_confirmacao_chave.inativa_chave
        end
        
        format.html { redirect_to @confirmacao_adocao, notice: 'Confirmacao adocao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @confirmacao_adocao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /confirmacao_adocaos/1
  # DELETE /confirmacao_adocaos/1.json
  def destroy
    @confirmacao_adocao = ConfirmacaoAdocao.find(params[:id])
    @confirmacao_adocao.destroy

    respond_to do |format|
      format.html { redirect_to confirmacao_adocaos_url }
      format.json { head :no_content }
    end
  end
end
