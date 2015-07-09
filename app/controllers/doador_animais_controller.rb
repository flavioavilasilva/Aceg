class DoadorAnimaisController < ApplicationController
  # GET /doador_animais
  # GET /doador_animais.json
  def index
    @doador_animais = DoadorAnimal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @doador_animais }
    end
  end

  # GET /doador_animais/1
  # GET /doador_animais/1.json
  def show
    @doador_animal = DoadorAnimal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @doador_animal }
    end
  end

  # GET /doador_animais/new
  # GET /doador_animais/new.json
  def new
    @doador_animal = DoadorAnimal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @doador_animal }
    end
  end

  # GET /doador_animais/1/edit
  def edit
    @doador_animal = DoadorAnimal.find(params[:id])
  end

  # POST /doador_animais
  # POST /doador_animais.json
  def create
    @doador_animal = DoadorAnimal.new(params[:doador_animal])

    respond_to do |format|
      if @doador_animal.save
        format.html { redirect_to @doador_animal, notice: 'Doador animal was successfully created.' }
        format.json { render json: @doador_animal, status: :created, location: @doador_animal }
      else
        format.html { render action: "new" }
        format.json { render json: @doador_animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /doador_animais/1
  # PUT /doador_animais/1.json
  def update
    @doador_animal = DoadorAnimal.find(params[:id])

    respond_to do |format|
      if @doador_animal.update_attributes(params[:doador_animal])
        format.html { redirect_to @doador_animal, notice: 'Doador animal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @doador_animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doador_animais/1
  # DELETE /doador_animais/1.json
  def destroy
    @doador_animal = DoadorAnimal.find(params[:id])
    @doador_animal.destroy

    respond_to do |format|
      format.html { redirect_to doador_animais_url }
      format.json { head :no_content }
    end
  end
end
