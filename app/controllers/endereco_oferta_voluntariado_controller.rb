class EnderecoOfertaVoluntariadoController < ApplicationController
  # GET /endereco_oferta_voluntariado
  # GET /endereco_oferta_voluntariado.json
  def index
    @endereco_oferta_voluntariado = EnderecoOfertaVoluntariado.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @endereco_oferta_voluntariado }
    end
  end

  # GET /endereco_oferta_voluntariado/1
  # GET /endereco_oferta_voluntariado/1.json
  def show
    @endereco_oferta_voluntariado = EnderecoOfertaVoluntariado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @endereco_oferta_voluntariado }
    end
  end

  # GET /endereco_oferta_voluntariado/new
  # GET /endereco_oferta_voluntariado/new.json
  def new
    @endereco_oferta_voluntariado = EnderecoOfertaVoluntariado.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @endereco_oferta_voluntariado }
    end
  end

  # GET /endereco_oferta_voluntariado/1/edit
  def edit
    @endereco_oferta_voluntariado = EnderecoOfertaVoluntariado.find(params[:id])
  end

  # POST /endereco_oferta_voluntariado
  # POST /endereco_oferta_voluntariado.json
  def create
    @endereco_oferta_voluntariado = EnderecoOfertaVoluntariado.new(params[:endereco_oferta_voluntariado])

    respond_to do |format|
      if @endereco_oferta_voluntariado.save
        format.html { redirect_to @endereco_oferta_voluntariado, notice: 'Endereco oferta voluntariado was successfully created.' }
        format.json { render json: @endereco_oferta_voluntariado, status: :created, location: @endereco_oferta_voluntariado }
      else
        format.html { render action: "new" }
        format.json { render json: @endereco_oferta_voluntariado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /endereco_oferta_voluntariado/1
  # PUT /endereco_oferta_voluntariado/1.json
  def update
    @endereco_oferta_voluntariado = EnderecoOfertaVoluntariado.find(params[:id])

    respond_to do |format|
      if @endereco_oferta_voluntariado.update_attributes(params[:endereco_oferta_voluntariado])
        format.html { redirect_to @endereco_oferta_voluntariado, notice: 'Endereco oferta voluntariado was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @endereco_oferta_voluntariado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /endereco_oferta_voluntariado/1
  # DELETE /endereco_oferta_voluntariado/1.json
  def destroy
    @endereco_oferta_voluntariado = EnderecoOfertaVoluntariado.find(params[:id])
    @endereco_oferta_voluntariado.destroy

    respond_to do |format|
      format.html { redirect_to endereco_oferta_voluntariado_index_url }
      format.json { head :no_content }
    end
  end
end
