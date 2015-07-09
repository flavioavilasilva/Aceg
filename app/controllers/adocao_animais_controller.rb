# encoding:UTF-8
class AdocaoAnimaisController < ApplicationController
  
  load_and_authorize_resource
  before_filter :authenticate_usuario!
  
  # GET /adocao_animals
  # GET /adocao_animals.json
  def index
    @adocao_animals = AdocaoAnimal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @adocao_animals }
    end
  end

  # GET /adocao_animals/1
  # GET /adocao_animals/1.json
  def show
    @adocao_animal = AdocaoAnimal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @adocao_animal }
    end
  end

  # GET /adocao_animals/new
  # GET /adocao_animals/new.json
  def new

    @adocao_animal = AdocaoAnimal.new
    @adocao_animal.doador_animal_id = params[:doador_animal_id]
    @adocao_animal.adotando_animal_id = current_usuario.id
    @adocao_animal.animal_id = params[:animal_id]
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @adocao_animal }
    end
    
  end

  # GET /adocao_animals/1/edit
  def edit
    @adocao_animal = AdocaoAnimal.find(params[:id])
  end

  # POST /adocao_animals
  # POST /adocao_animals.json
  def create
    
    #Recupera e estância objetos
    @adocao_animal = AdocaoAnimal.new(params[:adocao_animal])
    @adocao_animal.build_confirmacao_adocao
    @adocao_animal.confirmacao_adocao.adocao_confirmacao_chave.build
    
    @animal = Animal.find(@adocao_animal.animal_id)
    
    #Persiste se o status do animal está disponível para adoção
    if @animal.status_animal_id=!1
      redirect_to @animal, notice: 'Este animal foi ou se enconta em processo de adoção!'
      return
    end
    
    #Inicia processo de adoção
    ActiveRecord::Base.transaction do
    begin
      
      if @adocao_animal.save
          
        #Altera o status para em adocão (2)
        @animal.altera_status(2)
        
        #Gera chave de confirmação
        adocao_confirmacao_chave_id = @adocao_animal.confirmacao_adocao.adocao_confirmacao_chave.first.id
        adocao_confirmacao_chave = AdocaoConfirmacaoChave.find(adocao_confirmacao_chave_id)
        adocao_confirmacao_chave.chave_confirmacao
        
        #Notifica envolvidos
        AdocaoAnimal.notifica_adocao(@adocao_animal)
        
        respond_to do |format|
          format.html { redirect_to @adocao_animal, notice: 'Adocao animal was successfully created.' }
          format.json { render json: @adocao_animal, status: :created, location: @adocao_animal }
        end
        
      else
        format.html { render action: "new" }
        format.json { render json: @adocao_animal.errors, status: :unprocessable_entity }
      end
      
      rescue => e
        puts e
        raise ActiveRecord::Rollback
      end
    end
  end

  # PUT /adocao_animals/1
  # PUT /adocao_animals/1.json
  def update
    @adocao_animal = AdocaoAnimal.find(params[:id])

    respond_to do |format|
      if @adocao_animal.update_attributes(params[:adocao_animal])
        format.html { redirect_to @adocao_animal, notice: 'Adocao animal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @adocao_animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adocao_animals/1
  # DELETE /adocao_animals/1.json
  def destroy
    @adocao_animal = AdocaoAnimal.find(params[:id])
    @adocao_animal.destroy

    respond_to do |format|
      format.html { redirect_to adocao_animals_url }
      format.json { head :no_content }
    end
  end
  
  
end
