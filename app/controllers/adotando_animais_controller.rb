class AdotandoAnimaisController < ApplicationController
  # GET /adotando_animais
  # GET /adotando_animais.json
  def index
    @adotando_animais = AdotandoAnimal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @adotando_animais }
    end
  end

  # GET /adotando_animais/1
  # GET /adotando_animais/1.json
  def show
    @adotando_animal = AdotandoAnimal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @adotando_animal }
    end
  end

  # GET /adotando_animais/new
  # GET /adotando_animais/new.json
  def new
    @adotando_animal = AdotandoAnimal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @adotando_animal }
    end
  end

  # GET /adotando_animais/1/edit
  def edit
    @adotando_animal = AdotandoAnimal.find(params[:id])
  end

  # POST /adotando_animais
  # POST /adotando_animais.json
  def create
    @adotando_animal = AdotandoAnimal.new(params[:adotando_animal])

    respond_to do |format|
      if @adotando_animal.save
        format.html { redirect_to @adotando_animal, notice: 'Adotando animal was successfully created.' }
        format.json { render json: @adotando_animal, status: :created, location: @adotando_animal }
      else
        format.html { render action: "new" }
        format.json { render json: @adotando_animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /adotando_animais/1
  # PUT /adotando_animais/1.json
  def update
    @adotando_animal = AdotandoAnimal.find(params[:id])

    respond_to do |format|
      if @adotando_animal.update_attributes(params[:adotando_animal])
        format.html { redirect_to @adotando_animal, notice: 'Adotando animal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @adotando_animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adotando_animais/1
  # DELETE /adotando_animais/1.json
  def destroy
    @adotando_animal = AdotandoAnimal.find(params[:id])
    @adotando_animal.destroy

    respond_to do |format|
      format.html { redirect_to adotando_animais_url }
      format.json { head :no_content }
    end
  end
end
