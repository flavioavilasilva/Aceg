class TipoAnimaisController < ApplicationController
  # GET /tipo_animais
  # GET /tipo_animais.json
  def index
    @tipo_animais = TipoAnimal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_animais }
    end
  end

  # GET /tipo_animais/1
  # GET /tipo_animais/1.json
  def show
    @tipo_animal = TipoAnimal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_animal }
    end
  end

  # GET /tipo_animais/new
  # GET /tipo_animais/new.json
  def new
    @tipo_animal = TipoAnimal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_animal }
    end
  end

  # GET /tipo_animais/1/edit
  def edit
    @tipo_animal = TipoAnimal.find(params[:id])
  end

  # POST /tipo_animais
  # POST /tipo_animais.json
  def create
    @tipo_animal = TipoAnimal.new(params[:tipo_animal])

    respond_to do |format|
      if @tipo_animal.save
        format.html { redirect_to @tipo_animal, notice: 'Tipo animal was successfully created.' }
        format.json { render json: @tipo_animal, status: :created, location: @tipo_animal }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_animais/1
  # PUT /tipo_animais/1.json
  def update
    @tipo_animal = TipoAnimal.find(params[:id])

    respond_to do |format|
      if @tipo_animal.update_attributes(params[:tipo_animal])
        format.html { redirect_to @tipo_animal, notice: 'Tipo animal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_animais/1
  # DELETE /tipo_animais/1.json
  def destroy
    @tipo_animal = TipoAnimal.find(params[:id])
    @tipo_animal.destroy

    respond_to do |format|
      format.html { redirect_to tipo_animais_url }
      format.json { head :no_content }
    end
  end
end
