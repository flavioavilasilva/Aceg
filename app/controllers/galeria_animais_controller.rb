class GaleriaAnimaisController < ApplicationController
  # GET /galeria_animais
  # GET /galeria_animais.json
  def index
    @galeria_animais = GaleriaAnimal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @galeria_animais }
    end
  end

  # GET /galeria_animais/1
  # GET /galeria_animais/1.json
  def show
    @galeria_animal = GaleriaAnimal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @galeria_animal }
    end
  end

  # GET /galeria_animais/new
  # GET /galeria_animais/new.json
  def new
    
    @galeria_animal = Hash.new
    
    @galeria_animal[0] = GaleriaAnimal.new
    
    #@galeria_animal = GaleriaAnimal.new
    
    #for i in 0...5
      #galeria_animal = GaleriaAnimal.new
      #@galeria_animal[i] = galeria_animal
    #end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @galeria_animal }
    end
  end

  # GET /galeria_animais/1/edit
  def edit
    @galeria_animal = GaleriaAnimal.find(params[:id])
  end

  # POST /galeria_animais
  # POST /galeria_animais.json
  def create
    @galeria_animal = GaleriaAnimal.new(params[:galeria_animal])

    respond_to do |format|
      if @galeria_animal.save
        format.html { redirect_to @galeria_animal, notice: 'Galeria animal was successfully created.' }
        format.json { render json: @galeria_animal, status: :created, location: @galeria_animal }
      else
        format.html { render action: "new" }
        format.json { render json: @galeria_animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /galeria_animais/1
  # PUT /galeria_animais/1.json
  def update
    @galeria_animal = GaleriaAnimal.find(params[:id])

    respond_to do |format|
      if @galeria_animal.update_attributes(params[:galeria_animal])
        format.html { redirect_to @galeria_animal, notice: 'Galeria animal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @galeria_animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galeria_animais/1
  # DELETE /galeria_animais/1.json
  def destroy
    @galeria_animal = GaleriaAnimal.find(params[:id])
    @galeria_animal.destroy

    respond_to do |format|
      format.html { redirect_to galeria_animais_url }
      format.json { head :no_content }
    end
  end
end
