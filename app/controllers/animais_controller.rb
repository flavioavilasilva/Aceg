# encoding:UTF-8
class AnimaisController < ApplicationController
  
  before_filter :authenticate_usuario!, only: [:new, :destroy, :create, :update, :edit] 
  load_and_authorize_resource
  
  # GET /animals
  # GET /animals.json
  def index
    
    @animais = Animal.search(params)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @animais }
    end
  end

  # GET /animals/1
  # GET /animals/1.json
  def show
    @animal = Animal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @animal }
    end
  end

  # GET /animals/new
  # GET /animals/new.json
  def new
    
    @animal = Animal.new
    5.times{@animal.galeria_animal.build} 

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @animal }
    end
  end

  # GET /animals/1/edit
  def edit
    
    @animal = Animal.find(params[:id])
    @animal.galeria_animal.build 
    
  end

  # POST /animals
  # POST /animals.json
  def create
    @animal = Animal.new(params[:animal]) 
    @animal.doador_animal_id = current_usuario.id
    
    #Atribui status inicial
    @animal.status_animal_id = 1 #Disponível para adoção
      
    respond_to do |format|
      
      if @animal.save
        format.html { redirect_to @animal, notice: 'Animal was successfully created.' }
        format.json { render json: @animal, status: :created, location: @animal }
      else
        format.html { render action: "new" }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /animals/1
  # PUT /animals/1.json
  def update
    @animal = Animal.find(params[:id])

    respond_to do |format|
      if @animal.update_attributes(params[:animal])
        format.html { redirect_to @animal, notice: 'Animal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animals/1
  # DELETE /animals/1.json
  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy

    respond_to do |format|
      format.html { redirect_to animals_url }
      format.json { head :no_content }
    end
  end
  
end
