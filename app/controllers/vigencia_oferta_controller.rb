class VigenciaOfertaController < ApplicationController
  # GET /vigencia_oferta
  # GET /vigencia_oferta.json
  def index
    @vigencia_oferta = VigenciaOferta.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vigencia_oferta }
    end
  end

  # GET /vigencia_oferta/1
  # GET /vigencia_oferta/1.json
  def show
    @vigencia_ofertum = VigenciaOferta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vigencia_ofertum }
    end
  end

  # GET /vigencia_oferta/new
  # GET /vigencia_oferta/new.json
  def new
    @vigencia_ofertum = VigenciaOferta.new
    

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vigencia_ofertum }
    end
  end

  # GET /vigencia_oferta/1/edit
  def edit
    @vigencia_ofertum = VigenciaOferta.find(params[:id])
  end

  # POST /vigencia_oferta
  # POST /vigencia_oferta.json
  def create
    @vigencia_ofertum = VigenciaOferta.new(params[:vigencia_ofertum])

    respond_to do |format|
      if @vigencia_ofertum.save
        format.html { redirect_to @vigencia_ofertum, notice: 'Vigencia ofertum was successfully created.' }
        format.json { render json: @vigencia_ofertum, status: :created, location: @vigencia_ofertum }
      else
        format.html { render action: "new" }
        format.json { render json: @vigencia_ofertum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vigencia_oferta/1
  # PUT /vigencia_oferta/1.json
  def update
    @vigencia_ofertum = VigenciaOferta.find(params[:id])

    respond_to do |format|
      if @vigencia_ofertum.update_attributes(params[:vigencia_ofertum])
        format.html { redirect_to @vigencia_ofertum, notice: 'Vigencia ofertum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vigencia_ofertum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vigencia_oferta/1
  # DELETE /vigencia_oferta/1.json
  def destroy
    @vigencia_ofertum = VigenciaOferta.find(params[:id])
    @vigencia_ofertum.destroy

    respond_to do |format|
      format.html { redirect_to vigencia_oferta_url }
      format.json { head :no_content }
    end
  end
end
