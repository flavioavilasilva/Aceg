class TipoGaleriaController < ApplicationController
  # GET /tipo_galeria
  # GET /tipo_galeria.json
  def index
    @tipo_galeria = TipoGalerium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_galeria }
    end
  end

  # GET /tipo_galeria/1
  # GET /tipo_galeria/1.json
  def show
    @tipo_galerium = TipoGalerium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_galerium }
    end
  end

  # GET /tipo_galeria/new
  # GET /tipo_galeria/new.json
  def new
    @tipo_galerium = TipoGalerium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_galerium }
    end
  end

  # GET /tipo_galeria/1/edit
  def edit
    @tipo_galerium = TipoGalerium.find(params[:id])
  end

  # POST /tipo_galeria
  # POST /tipo_galeria.json
  def create
    @tipo_galerium = TipoGalerium.new(params[:tipo_galerium])

    respond_to do |format|
      if @tipo_galerium.save
        format.html { redirect_to @tipo_galerium, notice: 'Tipo galerium was successfully created.' }
        format.json { render json: @tipo_galerium, status: :created, location: @tipo_galerium }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_galerium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_galeria/1
  # PUT /tipo_galeria/1.json
  def update
    @tipo_galerium = TipoGalerium.find(params[:id])

    respond_to do |format|
      if @tipo_galerium.update_attributes(params[:tipo_galerium])
        format.html { redirect_to @tipo_galerium, notice: 'Tipo galerium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_galerium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_galeria/1
  # DELETE /tipo_galeria/1.json
  def destroy
    @tipo_galerium = TipoGalerium.find(params[:id])
    @tipo_galerium.destroy

    respond_to do |format|
      format.html { redirect_to tipo_galeria_url }
      format.json { head :no_content }
    end
  end
end
