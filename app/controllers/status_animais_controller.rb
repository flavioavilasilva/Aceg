class StatusAnimaisController < ApplicationController
  # GET /status_animais
  # GET /status_animais.json
  def index
    @status_animais = StatusAnimal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @status_animais }
    end
  end

  # GET /status_animais/1
  # GET /status_animais/1.json
  def show
    @status_animal = StatusAnimal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @status_animal }
    end
  end

  # GET /status_animais/new
  # GET /status_animais/new.json
  def new
    @status_animal = StatusAnimal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @status_animal }
    end
  end

  # GET /status_animais/1/edit
  def edit
    @status_animal = StatusAnimal.find(params[:id])
  end

  # POST /status_animais
  # POST /status_animais.json
  def create
    @status_animal = StatusAnimal.new(params[:status_animal])

    respond_to do |format|
      if @status_animal.save
        format.html { redirect_to @status_animal, notice: 'Status animal was successfully created.' }
        format.json { render json: @status_animal, status: :created, location: @status_animal }
      else
        format.html { render action: "new" }
        format.json { render json: @status_animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /status_animais/1
  # PUT /status_animais/1.json
  def update
    @status_animal = StatusAnimal.find(params[:id])

    respond_to do |format|
      if @status_animal.update_attributes(params[:status_animal])
        format.html { redirect_to @status_animal, notice: 'Status animal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @status_animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_animais/1
  # DELETE /status_animais/1.json
  def destroy
    @status_animal = StatusAnimal.find(params[:id])
    @status_animal.destroy

    respond_to do |format|
      format.html { redirect_to status_animais_url }
      format.json { head :no_content }
    end
  end
end
