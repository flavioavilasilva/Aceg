class PorteAnimaisController < ApplicationController
  # GET /porte_animais
  # GET /porte_animais.json
  def index
    @porte_animais = PorteAnimal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @porte_animais }
    end
  end

  # GET /porte_animais/1
  # GET /porte_animais/1.json
  def show
    @porte_animal = PorteAnimal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @porte_animal }
    end
  end

  # GET /porte_animais/new
  # GET /porte_animais/new.json
  def new
    @porte_animal = PorteAnimal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @porte_animal }
    end
  end

  # GET /porte_animais/1/edit
  def edit
    @porte_animal = PorteAnimal.find(params[:id])
  end

  # POST /porte_animais
  # POST /porte_animais.json
  def create
    @porte_animal = PorteAnimal.new(params[:porte_animal])

    respond_to do |format|
      if @porte_animal.save
        format.html { redirect_to @porte_animal, notice: 'Porte animal was successfully created.' }
        format.json { render json: @porte_animal, status: :created, location: @porte_animal }
      else
        format.html { render action: "new" }
        format.json { render json: @porte_animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /porte_animais/1
  # PUT /porte_animais/1.json
  def update
    @porte_animal = PorteAnimal.find(params[:id])

    respond_to do |format|
      if @porte_animal.update_attributes(params[:porte_animal])
        format.html { redirect_to @porte_animal, notice: 'Porte animal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @porte_animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /porte_animais/1
  # DELETE /porte_animais/1.json
  def destroy
    @porte_animal = PorteAnimal.find(params[:id])
    @porte_animal.destroy

    respond_to do |format|
      format.html { redirect_to porte_animais_url }
      format.json { head :no_content }
    end
  end
end
