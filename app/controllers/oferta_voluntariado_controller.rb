class OfertaVoluntariadoController < ApplicationController
  # GET /oferta_voluntariado
  # GET /oferta_voluntariado.json
  def index
    @oferta_voluntariado = OfertaVoluntariado.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @oferta_voluntariado }
    end
  end

  # GET /oferta_voluntariado/1
  # GET /oferta_voluntariado/1.json
  def show
    @oferta_voluntariado = OfertaVoluntariado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @oferta_voluntariado }
    end
  end

  # GET /oferta_voluntariado/new
  # GET /oferta_voluntariado/new.json
  def new
    @oferta_voluntariado = OfertaVoluntariado.new
    @oferta_voluntariado.endereco_oferta_voluntariado.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @oferta_voluntariado }
    end
  end

  # GET /oferta_voluntariado/1/edit
  def edit
    @oferta_voluntariado = OfertaVoluntariado.find(params[:id])
  end

  # POST /oferta_voluntariado
  # POST /oferta_voluntariado.json
  def create
    @oferta_voluntariado = OfertaVoluntariado.new(params[:oferta_voluntariado])

    respond_to do |format|
      if @oferta_voluntariado.save
        format.html { redirect_to @oferta_voluntariado, notice: 'Oferta voluntariado was successfully created.' }
        format.json { render json: @oferta_voluntariado, status: :created, location: @oferta_voluntariado }
      else
        format.html { render action: "new" }
        format.json { render json: @oferta_voluntariado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /oferta_voluntariado/1
  # PUT /oferta_voluntariado/1.json
  def update
    @oferta_voluntariado = OfertaVoluntariado.find(params[:id])

    respond_to do |format|
      if @oferta_voluntariado.update_attributes(params[:oferta_voluntariado])
        format.html { redirect_to @oferta_voluntariado, notice: 'Oferta voluntariado was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @oferta_voluntariado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oferta_voluntariado/1
  # DELETE /oferta_voluntariado/1.json
  def destroy
    @oferta_voluntariado = OfertaVoluntariado.find(params[:id])
    @oferta_voluntariado.destroy

    respond_to do |format|
      format.html { redirect_to oferta_voluntariado_index_url }
      format.json { head :no_content }
    end
  end
end
