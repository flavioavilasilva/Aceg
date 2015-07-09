class TipoPerfisController < ApplicationController
  # GET /tipo_perfis
  # GET /tipo_perfis.json
  def index
    @tipo_perfis = TipoPerfil.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_perfis }
    end
  end

  # GET /tipo_perfis/1
  # GET /tipo_perfis/1.json
  def show
    @tipo_perfil = TipoPerfil.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_perfil }
    end
  end

  # GET /tipo_perfis/new
  # GET /tipo_perfis/new.json
  def new
    @tipo_perfil = TipoPerfil.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_perfil }
    end
  end

  # GET /tipo_perfis/1/edit
  def edit
    @tipo_perfil = TipoPerfil.find(params[:id])
  end

  # POST /tipo_perfis
  # POST /tipo_perfis.json
  def create
    @tipo_perfil = TipoPerfil.new(params[:tipo_perfil])

    respond_to do |format|
      if @tipo_perfil.save
        format.html { redirect_to @tipo_perfil, notice: 'Tipo perfil was successfully created.' }
        format.json { render json: @tipo_perfil, status: :created, location: @tipo_perfil }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_perfis/1
  # PUT /tipo_perfis/1.json
  def update
    @tipo_perfil = TipoPerfil.find(params[:id])

    respond_to do |format|
      if @tipo_perfil.update_attributes(params[:tipo_perfil])
        format.html { redirect_to @tipo_perfil, notice: 'Tipo perfil was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_perfis/1
  # DELETE /tipo_perfis/1.json
  def destroy
    @tipo_perfil = TipoPerfil.find(params[:id])
    @tipo_perfil.destroy

    respond_to do |format|
      format.html { redirect_to tipo_perfis_url }
      format.json { head :no_content }
    end
  end
end
