class EnderecoPerfisController < ApplicationController
  # GET /endereco_perfis
  # GET /endereco_perfis.json
  def index
    @endereco_perfis = EnderecoPerfil.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @endereco_perfis }
    end
  end

  # GET /endereco_perfis/1
  # GET /endereco_perfis/1.json
  def show
    @endereco_perfil = EnderecoPerfil.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @endereco_perfil }
    end
  end

  # GET /endereco_perfis/new
  # GET /endereco_perfis/new.json
  def new
    @endereco_perfil = EnderecoPerfil.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @endereco_perfil }
    end
  end

  # GET /endereco_perfis/1/edit
  def edit
    @endereco_perfil = EnderecoPerfil.find(params[:id])
  end

  # POST /endereco_perfis
  # POST /endereco_perfis.json
  def create
    @endereco_perfil = EnderecoPerfil.new(params[:endereco_perfil])

    respond_to do |format|
      if @endereco_perfil.save
        format.html { redirect_to @endereco_perfil, notice: 'Endereco perfil was successfully created.' }
        format.json { render json: @endereco_perfil, status: :created, location: @endereco_perfil }
      else
        format.html { render action: "new" }
        format.json { render json: @endereco_perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /endereco_perfis/1
  # PUT /endereco_perfis/1.json
  def update
    @endereco_perfil = EnderecoPerfil.find(params[:id])

    respond_to do |format|
      if @endereco_perfil.update_attributes(params[:endereco_perfil])
        format.html { redirect_to @endereco_perfil, notice: 'Endereco perfil was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @endereco_perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /endereco_perfis/1
  # DELETE /endereco_perfis/1.json
  def destroy
    @endereco_perfil = EnderecoPerfil.find(params[:id])
    @endereco_perfil.destroy

    respond_to do |format|
      format.html { redirect_to endereco_perfis_url }
      format.json { head :no_content }
    end
  end
end
